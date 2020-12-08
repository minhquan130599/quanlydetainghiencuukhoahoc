<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class ValidatorServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app['validator']->extend('not_number', function ($attribute, $value, $parameters)
        {
            $data = explode(' ', $value);
            foreach ($data AS $val) {
                if (is_numeric($val)) {
                    return false;
                }
            }
            return true;
        });
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
