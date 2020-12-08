<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::user()->pk_imanhomcb == 2 || Auth::user()->pk_imanhomcb == 3 || Auth::user()->pk_imanhomcb == 1)
        {
            return $next($request);
        }
        
        return redirect()->route('welcome');
    }
}
