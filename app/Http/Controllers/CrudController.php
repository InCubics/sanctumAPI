<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\BaseController;
use Illuminate\Support\Facades\Validator;

class CrudController extends BaseController
{
    public function __construct(Request $request)
    {
        if(class_exists('\App\Models\\'.ucfirst($request->model)))     {
            $nsModel='App\Models\\'.ucfirst($request->model);
            $this->objModel = new $nsModel();
        }
    }

    public function createRecord(Request $request)
    {
        if($this->objModel === null)     {   // if record not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model doesn\'t exist';
            return $this->sendResponse($request);
        }

        $rq='\App\Http\Requests\\'.ucfirst($request->model).'Request';     // request to validate submitted data
        $validator=Validator::make($request->all(), (array)(new $rq())->rules());
        if(class_exists($rq) && $validator->fails())    {   // if validation fails
            $this->success      =false;
            $this->status       =412;   // Precondition failed
            $this->message      ='Invalid submitted data provided for changes on '.ucfirst($request->model).'Model';
            $this->validation   =$validator->errors();
        }
        elseif($this->objModel->fill($request->all())->save())  {
            $this->data         = $request->all();
            $this->data['id']   = $this->objModel->id;
            $this->success      =true;
            $this->status       =201;   // successfully created
            $this->message      ='Record added to the: '.ucfirst($request->model).'Model';
            $this->affected     =1;
        }
        else    { // nothing changed
            $this->status       = 304; // Not Modified
            $this->message      ='No record added to the: '.ucfirst($request->model).'Model (nothing changed)';
        }
        return $this->sendResponse($request);
    }


    public function updateRecord(Request $request)
    {
           if($this->objModel === null)     {   // if record not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model doesn\'t exist';
            return $this->sendResponse($request);
        }

        if($this->objModel->pivotFields)    {
            $pushPivot=array_diff($request->all($this->objModel->pivotFields), array('')); // get only pivot-values en remove empty keys
            $fillModel=\Arr::except($request->all(), array_merge($this->objModel->pivotFields, ['_method', strstr($request->with, 's').'_id', $request->model.'_id'])); // get values for the Model and remove all other keys
        }
        else    {
            $fillModel = $request->all();
        }

        $rq='\App\Http\Requests\\'.ucfirst($request->model).'Request';     // request to validate submitted data
        $validator=Validator::make($request->all(), (array)(new $rq())->rules());
        $record = $this->objModel->find($request->id);

        if(class_exists($rq) && $validator->fails())    {   // if validation fails
            $this->success      =false;
            $this->status       =412;   // Precondition failed
            $this->message      ='Invalid submitted data provided for changes on '.ucfirst($request->model).'Model';
            $this->validation   =$validator->errors();
        }
        elseif($record->fill($fillModel)->save() )
        { //$record->fill($request->all())->save()
            $this->data=$request->all();
            $this->success      =true;
            $this->status       =200;   // successfully created
            $this->message      ='Record updated with id: '.$request->id.' on '.ucfirst($request->model).'Model';
            $this->affected     = ($this->affected +1);
        }
        // additional updating record on Model, create/update relation
        $relation=$request->with;
        if(!empty($request->with) && !empty($request->rel_id)
            && $record->$relation()->updateExistingPivot(
            [   $request->model.'_id' => $request->id,
                strstr($request->with, 's', true).'_id' => $request->rel_id
            ],
            $pushPivot))
        { //$this->objModel->find($request->id)->beers()->updateExistingPivot(['beer_id' => 156, 'order_id' => $request->id], $pushPivot))
            $this->data         =$request->all();
            $this->success      =true;
            $this->status       =200;   // successfully created
            $this->message      ='Record updated with id: '.$request->id.' on '.ucfirst($request->model).'Model';
            $this->message      .=' with updated pivot-data on relation '.ucfirst(strstr($request->with, 's')).'Model';
            $this->affected     = ($this->affected +1);
        }
        return $this->sendResponse($request);
    }

    public function deleteRecord(Request $request)
    {
        if($this->objModel === null)     {   // if record not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model doesn\'t exist';
            return $this->sendResponse($request);
        }
        elseif(!$record = $this->objModel->find($request->id))      {   // if record not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested record to delete with id: '.$request->id.' NOT found on '.ucfirst($request->model).'Model';
            return $this->sendResponse($request);
        }

        $relation=$request->with.'s';
        if(!empty($request->with) && !empty($request->rel_id)
            && $record->$relation()->detach($request->rel_id))  {
            $this->success      =true;
            $this->status       =200;   // successfully created
            $this->message      ='Record with id: '.$request->id.' on '.ucfirst($request->model).'Model detached from id '
                                   .$request->rel_id.' on '.ucfirst(strstr($request->with, 's')).'Model' ;
            $this->affected     = 1;
        }
        elseif(empty($request->with) && empty($request->rel_id)
            && $record->forceDelete())    {
            $this->success      =true;
            $this->status       =200;
            $this->message      ='Record deleted with id: '.$request->id.' on '.ucfirst($request->model).'Model';
            $this->affected     =1;
            $this->data         =true;
        }
        return $this->sendResponse($request);
    }
}
