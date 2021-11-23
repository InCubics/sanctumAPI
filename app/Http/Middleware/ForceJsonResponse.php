<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ForceJsonResponse
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        /*
         * The first piece needed is the ForceJsonResponse middleware, which will convert all responses to JSON automatically.
         *  linked in Kernal.php under $routeMiddleware; json.response
         */

        $request->headers->set('Accept', 'application/json');
        return $next($request);
    }
}
