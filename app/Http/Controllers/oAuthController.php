<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class oAuthController extends Controller
{
    public function signin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|min:4'
                //   'regex:/[a-z]/',      // must contain at least one lowercase letter
                //   'regex:/[A-Z]/',      // must contain at least one uppercase letter
                //   'regex:/[0-9]/',      // must contain at least one digit
                //    'regex:/[@!%?&_-]/', // must contain a special character
        ]);
        if($validator->fails()){
            return response()->json([ 'success' => false, 'request'=> $request->all(),
                ',message'=> 'Invalid data submitted','Validation Error.', $validator->errors()],401);
        }
        elseif($user = User::where('email', $request->email)->first())
        {
            if(Hash::check($request->password, $user->password))
            {
                auth()->attempt($request->all());   //login with username and password
                $user       =Auth::user();
                $expire_at  =now()->addDays(10);    // token is 10 days valid
                $tokenObj   = $request->user()->createToken(date('is').config('app.name').
                    'AccessToken Password Grant '.$request->header('User-Agent'));
                return response()->json(
                    [   'success'       =>true,
                        'token_type'    =>'Bearer',
                        'token'         =>$tokenObj->plainTextToken,
                        'email'         =>$request->email, //                    'roles'=>$user->roles()->get(['name']),
                        'message'=>'Password-grant oAuth Json Web-Token (JWT)'],
                    200);
            }
            else
            {
                return response()->json(['success'=>false, 'message'=>'Password mismatch'], 422);
            }
        }
    }
}
