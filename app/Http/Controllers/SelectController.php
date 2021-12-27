<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\BaseController;

class SelectController extends BaseController
{
    public function __construct(Request $request)
    {
        if(class_exists('\App\Models\\'.ucfirst($request->model)))     {
            $nsModel='App\Models\\'.ucfirst($request->model);
            $this->objModel =new $nsModel();
        }
    }

    public function findRecord(Request $request)
    {
       if($this->objModel ===null )     {   // if model not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model not found';
           return $this->sendResponse($request);
        }

        if( ! is_numeric($request->id))     {
            $this->status = 404;
            $this->message  = 'Invalid request, provide an numeric id';
        }
        elseif(is_numeric($request->id) && $request->with !== null && $this->objModel->find($request->id) )
        {   // find record by id with its additional data on relation(s) - with
            $arrayRelations = explode(',', $request->with);
            foreach($arrayRelations as $relation)
            {
                if(!method_exists($this->objModel, $relation))
                {
                    $this->message  ='Given relation not found in: '.ucfirst($request->model).' Model';
                    return $this->sendResponse($request);
                }
            }
            $this->data = $this->objModel->with($arrayRelations)->find($request->id);
            $this->success  =true;
            $this->status   =200;
            $this->message  ='Found record on: '.ucfirst($request->model).'Model with a relation(s) on :'.$request->with;
            $this->count    = 1;
            $this->paginate =$request->paginate;
            $this->page     =$request->page;
        }
        elseif(is_numeric($request->id) && $this->data = $this->objModel->find($request->id))
        {   // find record by id
            if(count($this->data->toArray()) > 0)
            {
                $this->success=true;
                $this->status=200;
                $this->message='Record found with id: '.$request->id.' on '.ucfirst($request->model).'Model';
                $this->count=1;
            }
        }
        else {  // record NOT found
            $this->data     = [];
            $this->success  =false;
            $this->status   =400;   // Bad request
            $this->message  ='No record found with id: '.$request->id.' on '.ucfirst($request->model).'Model';
            $this->count    =0;
        }
        return $this->sendResponse($request);
    }

    public function allRecords(Request $request)
    {
        if($this->objModel ===null )     {   // if model not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model not found';
            return $this->sendResponse($request);
        }

        if($request->action === null && empty($request->paginate) && $request->with === null)
        {   // get all records
            $this->data = $this->objModel->all();
                $this->success  =true;
                $this->status   =200;
                $this->message  ='Found records of: '.ucfirst($request->model).'Model ';
                $this->count    =count($this->data);
                $this->paginate =$request->paginate;
                $this->page     =$request->page;
            }
        elseif($request->paginate !== null && is_numeric($request->paginate) && $request->with === null)
        {   // get all records paginated and optional paged
            $this->data = $this->objModel
//                ->with($this->objModel->relatedModels)
                    ->paginate($request->paginate, [ '*' ], 'page', $request->page)->all();
            if(empty($request->page)) {$request->page = 1;}
            $this->success  =true;
            $this->status   =200;
            $this->message  ='Found records of: '.ucfirst($request->model).'Model paginated per '.$request->paginate;
            $this->message  .= ', page '.$request->page;
            $this->count    =count($this->data);
            $this->total    = count($this->objModel->all());
            $this->paginate =$request->paginate;
            $this->page     =$request->page;
        }
        elseif($request->with !== null )
        {   // get all record that has additional data on relation(s)  - with
            $arrayRelations = explode(',', $request->with);
            foreach($arrayRelations as $relation)
            {
                if(!method_exists($this->objModel, $relation))  {
                    $this->message  ='Given relation not found in: '.ucfirst($request->model).' Model';
                    return $this->sendResponse($request);
                }
            }
            $this->data = $this->objModel->with($arrayRelations)->get();
            $this->success  =true;
            $this->status   =200;
            $this->message  ='Found records of: '.ucfirst($request->model).'Model with a relation(s) on :'.$request->with;
            $this->count    =count($this->data);
            $this->paginate =$request->paginate;
            $this->page     =$request->page;
        }

        return $this->sendResponse($request);
    }
}
