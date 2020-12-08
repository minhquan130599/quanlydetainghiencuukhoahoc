<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Validation\ValidationException;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Auth;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        AuthorizationException::class,
        HttpException::class,
        ModelNotFoundException::class,
        ValidationException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception  $e
     * @return void
     */
    public function report(Exception $e)
    {
        parent::report($e);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $e
     * @return \Illuminate\Http\Response
     */
    // public function render($request, Exception $e)
    // {
    //     return parent::render($request, $e);
    // }

    /**
     * Tùy biến lỗi mà Laravel bắn ra
     * 404 => không tìm thấy trang
     * 405 => phương thức không được phép
     * 500 => Lỗi từ server (do code lỗi)
     * 503 => Server ko thể trả về được
     * @param  [type]    $request [Request từ client]
     * @param  Exception $e       [Lỗi định danh cho Exception]
     * @return [type]             [description]
     */
    public function render($request, Exception $e) {
        if ( $this->isHttpException($e) )
        {
            switch ($e->getStatusCode())
            {
                case '404':
                    return redirect()->route('app.errors');
                    break;
            }
        }

        return parent::render($request, $e);
    }
}
