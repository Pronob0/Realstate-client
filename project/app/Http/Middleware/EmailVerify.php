<?php

namespace App\Http\Middleware;

use App\Models\Generalsetting;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EmailVerify
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        return $next($request);
        $is_verify = Generalsetting::value('is_verify');
        if($is_verify){
            if (auth()->check()) {
                $user = auth()->user();
                if($user->email_verified == 'No'){
                    if($request->expectsJson()){
                        $response = [
                            'success'    => true,
                            'message'    => 'Please verify your email.',
                            'response'   => ['email_verify' => true],
                        ];
                
                        return response()->json($response);
                    }
                    return redirect(route('user.verify.email'));
                }
                return $next($request);
            }

        }
    }
}
