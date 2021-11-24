<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    protected $objModel   = null;
    protected $request    = null;
    protected $validatedRequest = null;
    protected $data       = null;
    protected $success    =false;
    protected $status     =404;  //Not Found; https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
    protected $message    ='FAILED; something went wrong';
    protected $validation =null;
    protected $count      =0;
    protected $affected   =0;
    protected $paginate   =null;
    protected $page       =null;

    public function sendResponse(Request $request)
    {
        if(class_exists('\App\Http\Resources\\'.ucfirst($request->model).'Resource'))
        {
            $nsResource='App\Http\Resources\\'.ucfirst($request->model).'Resource';
            $this->data =new $nsResource((object)$this->data);
        }

        // RETURN DATA
        return response()
            ->json(['data'=>$this->data, 'request'=> $request->all(), 'meta'=>$this->getMeta($request)])
            ->withHeaders(array_merge(['Content-Type'=>'application/json',  'Accept' => 'application/json'],
                ['response_state'=>$this->status, 'creator'=>"InCubics.net (c) ".date('Y').'-'.(date('Y')+1)]));
    }

    private function getMeta(Request $request)
    {
        $user = auth('sanctum')->user();
        return [
            'success'           =>$this->success,          // success: true || false
            'status'            =>$this->status,           // html response-status
            'message'           =>$this->message,          // readable message
            'validation'        =>$this->validation,       // if invalid data is submitted
            'count'             =>$this->count,            // count of records requested
            'affected'          =>$this->affected,         // count of records affected
            'pagination'        =>$this->paginate,
            'page'              =>$this->page,

            'whoami'            => ['email' => (!empty($user->email)) ? $user->email : null ,
                                    'id'=>(!empty($user->id)) ? $user->id : null], // Who Am I
            'default_lang'      =>config('app.fallback_locale'),
            'locale'            =>config('app.locale'),
            'host'              =>$request->getHost(),
            'httphost'          =>$request->getHttpHost(),
            'root'              =>$request->root(),
            'path'              => $request->path(),

        ];
    }

}
