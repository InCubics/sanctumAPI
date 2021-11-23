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
       if(!is_object($this->objModel))     {   // if model not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model not found';
        }
       elseif(empty($this->objModel->relatedModels)) {
           $this->objModel->relatedModels = [];
       }

        if( ! is_numeric($request->id))     {
            $this->status = 404;
            $this->message  = 'Invalid request, provide an numeric id';
        }
        elseif(is_numeric($request->id)
           && $this->data = $this->objModel->with($this->objModel->relatedModels)->find($request->id))
        {
            if(count($this->data->toArray()) >0)
            {
                $this->success=true;
                $this->status=200;
                $this->message='Record found with id: '.$request->id.' on '.ucfirst($request->model).'Model';
                $this->count=1;
            }
        }
        else {
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
        if(!is_object($this->objModel))     {   // if model not found
            $this->status   =400;   // Bad request
            $this->message  ='Requested model '.ucfirst($request->model).'Model not found';
        }
        elseif(empty($this->objModel->relatedModels)) {
            $this->objModel->relatedModels = [];
        }

        if($request->action === null
            && $this->data = $this->objModel->with($this->objModel->relatedModels)
                    ->paginate($request->paginate, [ '*' ], 'page', $request->page)->all()  )   {
                $this->success  =true;
                $this->status   =200;
                $this->message  ='Found records of: '.ucfirst($request->model).'Model ';
                $this->count    =count($this->data);
                $this->paginate =$request->paginate;
                $this->page     =$request->page;
            }
        return $this->sendResponse($request);
    }
}
