<?php
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::group(['prefix' => 'feedback'], function() {
    Route::post('store', [
        'as' => 'app.feedback.store',
        'uses' => 'FeedbackController@store'
    ]);

    Route::get('/', [
        'as' => 'app.feedback.index',
        'uses' => 'FeedbackController@index'
    ]);
}); // Feedback

Route::get('errors', [
    'as' => 'app.errors',
    'uses' => 'Category\ErrorController@redirectErrorPage'
]);

Route::get('author', function () {
    return view('master.author');
});

Route::get('fail_data', [
    'as' => 'app.errors.fail_data',
    'uses' => 'Category\ErrorController@fail_data'
]);

Route::get('admin/form/test', function() {
    return view('form.phieudangky');
});

// Đăng nhập
Route::get('/', [
    'as' => 'default',
    'uses' => 'Client\LoginController@create'
]);

Route::get('welcome', [
    'as' => 'welcome',
    'uses' => 'WelcomeController@index'
]);

Route::post('login', [
    'as' => 'login.check',
    'uses' => 'Client\LoginController@login'
]);

Route::get('logout', [
    'as' => 'login.logout',
    'uses' => 'Client\LoginController@logout'
]);

// Đăng ký hồ sơ cán bộ
Route::get('client', [
	'as' => 'client.create',
	'uses' => 'Client\SignupController@create'
]);

Route::post('client/register', [
	'as' => 'client.store',
	'uses' => 'Client\SignupController@store'
]);

// Tìm kiếm cán bộ, đề tài
    Route::resource('search', 'SearchController@index');

//Request Ajax trả về danh sách cán bộ của đơn vị
    Route::resource('resourcestaff', 'Staff\StaffController@resourcestaff');

/* ===================== Trang quản trị (dành cho cán bộ quản lý) =================== */
Route::group(['prefix' => 'admin', 'middleware' => array('auth')], function() {
    // Quản lý cán bộ
    Route::group(['prefix' => 'staff'], function() {
        Route::get('create', [
        	'as' => 'admin.staff.create',
        	'uses' => 'Staff\StaffController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.staff.store',
            'uses' => 'Staff\StaffController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.staff.index',
            'uses' => 'Staff\StaffController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.staff.edit',
            'uses' => 'Staff\StaffController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'admin.staff.update',
            'uses' => 'Staff\StaffController@update'
        ]);

        Route::get('show/{id}', [
            'as' => 'admin.staff.detail',
            'uses' => 'Staff\StaffController@show'
        ]);

        Route::post('image', [
            'as' => 'admin.staff.image',
            'uses' => 'Staff\StaffController@createImage'
        ]);

        Route::resource('resource', 'Staff\StaffController@resource');

        Route::resource('info', 'Staff\StaffController@showInfo');
    }); // Quản lý cán bộ


    /**
     * Lập kế hoạch - Đề tài
     */
    Route::group(['prefix' => 'topic'], function() {
        Route::get('create', [
            'as' => 'admin.topic.create',
            'uses' => 'Plan\TopicController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.topic.store',
            'uses' => 'Plan\TopicController@store'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.topic.edit',
            'uses' => 'Plan\TopicController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.topic.update',
            'uses' => 'Plan\TopicController@update'
        ])->where(['id' => '[0-9]+']);

        Route::get('/', [
            'as' => 'admin.topic.index',
            'uses' => 'Plan\TopicController@index'
        ]);

        Route::post('notify/{id}', [
            'as' => 'admin.topic.notify',
            'uses' => 'Plan\TopicController@notify'
        ])->where(['id' => '[0-9]+']);


        Route::post('destroy/{id}', [
            'as' => 'admin.topic.destroy',
            'uses' => 'Plan\TopicController@destroy'
        ]);

        Route::get('detail/{id?}', function () {

            $data = array(
                array(
                    'id' => '1',
                    'time' => time(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 0
                ),

                array(
                    'id' => '2',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 0
                ),

                array(
                    'id' => '3',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 2
                ),

                array(
                    'id' => '4',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 2
                ),

                array(
                    'id' => '5',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 1
                ),

                array(
                    'id' => '6',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 2
                ),

                array(
                    'id' => '6',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 1
                ),

                array(
                    'id' => '6',
                    'time' => time() + rand(),
                    'content' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos incidunt eaque a magni quasi nihil sequi delectus aperiam tenetur fuga nisi quas architecto, nobis rem obcaecati. Vero incidunt eum nisi.',
                    'parent' => 1
                )
            );


            return view('plan.topic.detail', compact('data'));
        });
    }); // Đề tài

    /**
     * Lập kế hoạch - Hội đồng thẩm định
     */
    Route::group(['prefix' => 'expertise'], function () {
        Route::get('create', [
            'as' => 'admin.expertise.create',
            'uses' => 'Plan\ExpertiseController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.expertise.store',
            'uses' => 'Plan\ExpertiseController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.expertise.index',
            'uses' => 'Plan\ExpertiseController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.expertise.edit',
            'uses' => 'Plan\ExpertiseController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.expertise.update',
            'uses' => 'Plan\ExpertiseController@update'
        ]);

        Route::post('update_member', [
            'as' => 'admin.expertise.update_member',
            'uses' => 'Plan\ExpertiseController@update_member'
        ]);

        Route::get('member', [
            'as' => 'admin.expertise.member',
            'uses' => 'Plan\ExpertiseController@member'
        ]);
    }); // Hội đồng thẩm định

    Route::group(['prefix' => 'expertise-content'], function() {
        Route::get('create', [
            'as' => 'admin.expertise_content.create',
            'uses' => 'Plan\ExpertiseContentController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.expertise_content.store',
            'uses' => 'Plan\ExpertiseContentController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.expertise_content.index',
            'uses' => 'Plan\ExpertiseContentController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.expertise_content.edit',
            'uses' => 'Plan\ExpertiseContentController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.expertise_content.update',
            'uses' => 'Plan\ExpertiseContentController@update'
        ])->where(['id' => '[0-9]+']);

        Route::get('ajax', [
            'as' => 'admin.expertise_content.ajax',
            'uses' => 'Plan\ExpertiseContentController@ajax'
        ]);

        Route::any('result', [
            'as' => 'admin.expertise_content.result',
            'uses' => 'Plan\ExpertiseContentController@result'
        ]);

        Route::resource('leader_source', 'Plan\ExpertiseContentController@resource');

        Route::post('email', [
            'as' => 'admin.expertise_content.email',
            'uses' => 'Plan\ExpertiseContentController@email'
        ]);
    }); // Nội dung thẩm định

    Route::group(['prefix' => 'contract'], function() {
        Route::get('/', [
            'as' => 'admin.contract.index',
            'uses' => 'Plan\ContractController@index'
        ]);

        Route::get('create', [
            'as' => 'admin.contract.create',
            'uses' => 'Plan\ContractController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.contract.store',
            'uses' => 'Plan\ContractController@store'
        ]);

        Route::any('edit/{id}', [
            'as' => 'admin.contract.edit',
            'uses' => 'Plan\ContractController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'admin.contract.update',
            'uses' => 'Plan\ContractController@update'
        ]);

        Route::post('delete/{id}', [
            'as' => 'admin.contract.delete',
            'uses' => 'Plan\ContractController@destroy'
        ])->where(['id' => '[0-9]+']);

        Route::get('check', [
            'as' => 'admin.contract.check_number',
            'uses' => 'Plan\ContractController@check_number'
        ]);

         Route::get('check-contract-number', [
            'as' => 'admin.contract.check_contract_number',
            'uses' => 'Plan\ContractController@checkContractNumber'
        ]);
    }); // Hợp đồng


    Route::group(['prefix' => 'deploy'], function() {
        Route::get('/', [
            'as' => 'deploy.category.index',
            'uses' => 'Deploy\CategoryController@index'
        ]);

        Route::get('show/{id}', [
            'as' => 'deploy.category.show',
            'uses' => 'Deploy\CategoryController@show'
        ]);

        Route::resource('resource', 'Deploy\CategoryController@resource');
    }); // Triển khai danh mục

    Route::group(['prefix' => 'survey'], function() {
        Route::get('/', [
            'as' => 'admin.survey.index',
            'uses' => 'Deploy\SurveyController@index'
        ]);

        Route::get('create', [
            'as' => 'admin.survey.create',
            'uses' => 'Deploy\SurveyController@create'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.survey.edit',
            'uses' => 'Deploy\SurveyController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'admin.survey.update',
            'uses' => 'Deploy\SurveyController@update'
        ]);

        Route::post('store', [
            'as' => 'admin.survey.store',
            'uses' => 'Deploy\SurveyController@store'
        ]);
    }); // Hội đồng khảo sát

    Route::group(['prefix' => 'survey'], function() {
        Route::get('/', [
            'as' => 'admin.survey.index',
            'uses' => 'Deploy\SurveyController@index'
        ]);

        Route::get('create', [
            'as' => 'admin.survey.create',
            'uses' => 'Deploy\SurveyController@create'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.survey.edit',
            'uses' => 'Deploy\SurveyController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'admin.survey.update',
            'uses' => 'Deploy\SurveyController@update'
        ]);

        Route::post('store', [
            'as' => 'admin.survey.store',
            'uses' => 'Deploy\SurveyController@store'
        ]);
    }); // Hội đồng khảo sát

    Route::group(['prefix' => 'expense'], function() {
        Route::get('/', [
            'as' => 'admin.expense.index',
            'uses' => 'Deploy\ExpenseController@index'
        ]);

        Route::post('store', [
            'as' => 'admin.expense.store',
            'uses' => 'Deploy\ExpenseController@store'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.expense.edit',
            'uses' => 'Deploy\ExpenseController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.expense.update',
            'uses' => 'Deploy\ExpenseController@update'
        ])->where(['id' => '[0-9]+']);

        Route::post('destroy/{id}', [
            'as' => 'admin.expense.destroy',
            'uses' => 'Deploy\ExpenseController@destroy'
        ])->where(['id' => '[0-9]+']);

        Route::resource('money_resource', 'Deploy\ExpenseController@getMoneyText');
        Route::resource('expense_topic', 'Deploy\ExpenseController@getExpenseTopic');
    });

    Route::group(['prefix' => 'survey_content'], function() {
        Route::get('create', [
            'as' => 'admin.survey_content.create',
            'uses' => 'Deploy\SurveyContentController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.survey_content.store',
            'uses' => 'Deploy\SurveyContentController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.survey_content.index',
            'uses' => 'Deploy\SurveyContentController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.survey_content.edit',
            'uses' => 'Deploy\SurveyContentController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.survey_content.update',
            'uses' => 'Deploy\SurveyContentController@update'
        ])->where(['id' => '[0-9]+']);
    }); // Nội dung khảo sát

    Route::group(['prefix' => 'renewal'], function() {
        Route::get('/', [
            'as' => 'admin.renewal.index',
            'uses' => 'Deploy\RenewalController@index'
        ]);

        Route::get('show/{id}', [
            'as' => 'admin.renewal.show',
            'uses' => 'Deploy\RenewalController@show'
        ]);

        Route::post('update', [
            'as' => 'admin.renewal.update',
            'uses' => 'Deploy\RenewalController@update'
        ]);

    }); // Hội đồng khảo sát

    Route::group(['prefix' => 'registration_protect'], function() {
        Route::get('/', [
            'as' => 'admin.registration_protect.index',
            'uses' => 'Deploy\RegistrationProtectController@index'
        ]);

        Route::post('store', [
            'as' => 'admin.registration_protect.store',
            'uses' => 'Deploy\RegistrationProtectController@store'
        ]);
    });  // Đăng ký bảo vệ


    Route::group(['prefix' => 'acceptance'], function() {
        Route::get('create', [
            'as' => 'admin.acceptance.create',
            'uses' => 'Deploy\AcceptanceController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.acceptance.store',
            'uses' => 'Deploy\AcceptanceController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.acceptance.index',
            'uses' => 'Deploy\AcceptanceController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.acceptance.edit',
            'uses' => 'Deploy\AcceptanceController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.acceptance.update',
            'uses' => 'Deploy\AcceptanceController@update'
        ])->where(['id' => '[0-9]+']);
    }); // Hội đồng nghiệm thu

    Route::group(['prefix' => 'acceptance_content'], function() {
        Route::get('create', [
            'as' => 'admin.acceptance_content.create',
            'uses' => 'Deploy\AcceptanceContentController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.acceptance_content.store',
            'uses' => 'Deploy\AcceptanceContentController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.acceptance_content.index',
            'uses' => 'Deploy\AcceptanceContentController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.acceptance_content.edit',
            'uses' => 'Deploy\AcceptanceContentController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.acceptance_content.update',
            'uses' => 'Deploy\AcceptanceContentController@update'
        ])->where(['id' => '[0-9]+']);

        Route::post('email', [
            'as' => 'admin.acceptance_content.email',
            'uses' => 'Deploy\AcceptanceContentController@email'
        ]);

        Route::resource('leader', 'Deploy\AcceptanceContentController@leader');
    }); // Nội dung nghiệm thu

    Route::group(['prefix' => 'liquidation'], function() {
        Route::get('create', [
            'as' => 'admin.liquidation.create',
            'uses' => 'Deploy\LiquidationController@create'
        ]);

        Route::post('store', [
            'as' => 'admin.liquidation.store',
            'uses' => 'Deploy\LiquidationController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.liquidation.index',
            'uses' => 'Deploy\LiquidationController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.liquidation.edit',
            'uses' => 'Deploy\LiquidationController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.liquidation.update',
            'uses' => 'Deploy\LiquidationController@update'
        ])->where(['id' => '[0-9]+']);;
    }); // Hội đồng thanh lý

    Route::group(['prefix' => 'liqui_content'], function() {
        Route::get('create', [
            'as' => 'admin.liqui_content.create',
            'uses' => 'Deploy\LiquiContentController@create'
        ]);

        Route::get('/', [
            'as' => 'admin.liqui_content.index',
            'uses' => 'Deploy\LiquiContentController@index'
        ]);

        Route::post('store', [
            'as' => 'admin.liqui_content.store',
            'uses' => 'Deploy\LiquiContentController@store'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.liqui_content.edit',
            'uses' => 'Deploy\LiquiContentController@edit'
        ])->where(['id' => '[0-9]+']);

        Route::post('update/{id}', [
            'as' => 'admin.liqui_content.update',
            'uses' => 'Deploy\LiquiContentController@update'
        ])->where(['id' => '[0-9]+']);

        Route::post('destroy/{id}', [
            'as' => 'admin.liqui_content.destroy',
            'uses' => 'Deploy\LiquiContentController@destroy'
        ])->where(['id' => '[0-9]+']);;
    });  // Nội dung nghiệm thu

    Route::group(['prefix' => 'delay'], function() {
        Route::get('/', [
            'as' => 'admin.delay.index',
            'uses' => 'Deploy\DelayController@index'
        ]);

        Route::post('store', [
            'as' => 'admin.delay.store',
            'uses' => 'Deploy\DelayController@store'
        ]);

        Route::post('email', [
            'as' => 'admin.delay.email',
            'uses' => 'Deploy\DelayController@email'
        ]);
    });

    Route::group(['prefix' => 'certify'], function() {
        Route::get('/', [
            'as' => 'admin.certify.index',
            'uses' => 'Certify\CertifyController@index'
        ]);

        Route::post('store', [
            'as' => 'admin.certify.store',
            'uses' => 'Certify\CertifyController@store'
        ]);

        Route::post('destroy/{id}', [
            'as' => 'admin.certify.destroy',
            'uses' => 'Certify\CertifyController@destroy'
        ]);

        Route::post('email/{id}', [
            'as' => 'admin.certify.email',
            'uses' => 'Certify\CertifyController@email'
        ]);

        Route::post('update/{id}', [
            'as' => 'admin.certify.update',
            'uses' => 'Certify\CertifyController@update'
        ]);
    }); // Chứng nhận đề tài


    Route::group(['prefix' => 'product'], function() {
        Route::get('create', [
            'as' => 'admin.product.create',
            'uses' => 'Product\ProductController@create'
        ]);


        Route::post('store', [
            'as' => 'admin.product.store',
            'uses' => 'Product\ProductController@store'
        ]);

        Route::get('/', [
            'as' => 'admin.product.index',
            'uses' => 'Product\ProductController@index'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.product.edit',
            'uses' => 'Product\ProductController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'admin.product.update',
            'uses' => 'Product\ProductController@update'
        ]);

        Route::post('delete/{id}', [
            'as' => 'admin.product.delete',
            'uses' => 'Product\ProductController@destroy'
        ]);
    }); // Quản lý sản phẩm

    Route::get('statistical', [
        'as' => 'admin.statistical.index',
        'uses' => 'StatisticalController@index'
    ]); // Thống kê

    /**
     * Danh sách đơn vị
     */
    Route::group(['prefix' => 'unit'], function() {
        Route::get('/', [
            'as' => 'admin.unit.index',
            'uses' => 'Category\UnitController@index'
        ]);
        Route::get('create', [
            'as' => 'admin.unit.create',
            'uses' => 'Category\UnitController@create'
        ]);
        Route::post('store', [
            'as' => 'admin.unit.store',
            'uses' => 'Category\UnitController@store'
        ]);
        Route::get('edit/{id}', [
            'as' => 'admin.unit.edit',
            'uses' => 'Category\UnitController@edit'
        ]);
        Route::post('update/{id}', [
            'as' => 'admin.unit.update',
            'uses' => 'Category\UnitController@update'
        ]);
    });
    //Danh sách đơn vị

    /**
     * Nhóm cán bộ
     */
    Route::group(['prefix' => 'staffgroup'], function() {
        Route::get('/', [
            'as' => 'admin.staffgroup.index',
            'uses' => 'Category\StaffGroupController@index'
        ]);
        Route::post('create', [
            'as' => 'admin.staffgroup.create',
            'uses' => 'Category\StaffGroupController@create'
        ]);
        Route::post('store', [
            'as' => 'admin.staffgroup.store',
            'uses' => 'Category\StaffGroupController@store'
        ]);
        Route::get('edit/{id}', [
            'as' => 'admin.staffgroup.edit',
            'uses' => 'Category\StaffGroupController@edit'
        ]);
        Route::post('update/{id}', [
            'as' => 'admin.staffgroup.update',
            'uses' => 'Category\StaffGroupController@update'
        ]);
    });
    //Nhóm cán bộ

    /**
     * Danh mục loại đề tài
     */
    Route::group(['prefix' => 'topiccategory'], function() {
        Route::get('/', [
            'as' => 'admin.topiccategory.index',
            'uses' => 'Category\TopicCategoryController@index'
        ]);
        Route::post('create', [
            'as' => 'admin.topiccategory.create',
            'uses' => 'Category\TopicCategoryController@create'
        ]);
        Route::get('edit/{id}', [
            'as' => 'admin.topiccategory.edit',
            'uses' => 'Category\TopicCategoryController@edit'
        ]);
        Route::post('update/{id}', [
            'as' => 'admin.topiccategory.update',
            'uses' => 'Category\TopicCategoryController@update'
        ]);
        Route::get('destroy/{id}', [
            'as' => 'admin.topiccategory.destroy',
            'uses' => 'Category\TopicCategoryController@destroy'
        ]);
    });
    //Danh mục loại đề tài

    /**
     * Hệ Thống
     */
    Route::group(['prefix' => 'system'], function() {
        Route::get('/', [
            'as' => 'admin.system.index',
            'uses' => 'System\SystemController@index'
        ]);
        Route::post('store', [
            'as' => 'admin.system.store',
            'uses' => 'System\SystemController@store'
        ]);
        Route::get('edit/{id}', [
            'as' => 'admin.system.edit',
            'uses' => 'System\SystemController@edit'
        ]);
        Route::post('update/{id}', [
            'as' => 'admin.system.update',
            'uses' => 'System\SystemController@update'
        ]);
    });
    //Hệ thống

    /**
     * Thông báo
     */
    Route::group(['prefix' => 'notification'], function() {
        Route::get('/', [
            'as' => 'admin.notification.index',
            'uses' => 'NotificationController@index'
        ]);
        Route::post('store', [
            'as' => 'admin.notification.store',
            'uses' => 'NotificationController@store'
        ]);
        Route::post('stored/{id}', [
            'as' => 'admin.notification.stored',
            'uses' => 'NotificationController@stored'
        ]);
        Route::post('edit', [
            'as' => 'admin.notification.edit',
            'uses' => 'NotificationController@edit'
        ]);
        Route::post('update/{id}', [
            'as' => 'admin.notification.update',
            'uses' => 'NotificationController@update'
        ]);
        Route::get('delete/{id}', [
            'as' => 'admin.notification.delete',
            'uses' => 'NotificationController@delete'
        ]);
    });
    //Thông báo
    //
    Route::group(['prefix' => 'document'], function() {
        Route::get('/', [
            'as' => 'admin.document.index',
            'uses' => 'Category\DocumentController@index'
        ]);
        Route::post('store', [
            'as' => 'admin.document.store',
            'uses' => 'Category\DocumentController@store'
        ]);

        Route::get('edit/{id}', [
            'as' => 'admin.document.edit',
            'uses' => 'Category\DocumentController@edit'
        ]);
        Route::post('update/{id}', [
            'as' => 'admin.document.update',
            'uses' => 'Category\DocumentController@update'
        ]);
        Route::post('delete/{id}', [
            'as' => 'admin.document.delete',
            'uses' => 'Category\DocumentController@destroy'
        ]);
    });

    Route::group(['prefix' => 'form'], function() {
        // In biểu mẫu
        Route::get('/', [
            'as' => 'admin.form.index',
            'uses' => 'FormController@index'
        ]);

        Route::get('/phieudangky/{topicID?}', [
            'as' => 'admin.form.phieudangky',
            'uses' => 'FormController@showPhieuDangKy'
        ]);

        Route::get('/bbhophdtd/{topicID?}', [
            'as' => 'admin.form.bbhophdtd',
            'uses' => 'FormController@showBienbanHopHdTd'
        ]);

        Route::get('/bosungthuyetminh/{topicID?}', [
            'as' => 'admin.form.bstm',
            'uses' => 'FormController@showBosungThuyetminh'
        ]);

        Route::get('/phieudanhgiadecuong/{topicID?}', [
            'as' => 'admin.form.phieudanhgiadecuong',
            'uses' => 'FormController@showPhieudanhgiaDecuong'
        ]);

        Route::get('/tmdecuongdt/{topicID?}', [
            'as' => 'admin.form.tmdecuongdt',
            'uses' => 'FormController@showThuyetminhDecuong'
            //return view('form.thuyetminh_decuong_detai');
        ]);

        Route::get('/bctd/{topicID?}', [
            'as' => 'admin.form.bctd',
            'uses' => 'FormController@showBctd'
        ]);

        Route::get('/maurutdetai/{topicID?}', [
            'as' => 'admin.form.rutdetai',
            'uses' => 'FormController@showRutDetai'
        ]);

        Route::get('/thanhtoandetaicapkhoa/{topicID?}', [
            'as' => 'admin.form.thanhtoan',
            'uses' => 'FormController@showThanhtoan'
        ]);

        Route::get('/tudanhgia/{topicID?}', [
            'as' => 'admin.form.mau1',
            'uses' => 'FormController@showMau1'
        ]);

        Route::get('/mau2hdntdt/{topicID?}', [
            'as' => 'admin.form.mau2hdntdt',
            'uses' => 'FormController@showCongvanNghiemthu'
        ]);

        Route::get('/mau3hdntdt/{topicID?}', [
            'as' => 'admin.form.giahan',
            'uses' => 'FormController@showGiahan'
        ]);

        Route::get('/mau4hdntdt/{topicID?}', [
            'as' => 'admin.form.phieuphanbien',
            'uses' => 'FormController@showPhieuPhanBien'
        ]);

        Route::get('/mau5hdntdt/{topicID?}', [
            'as' => 'admin.form.mau5hdntdt',
            'uses' => 'FormController@NghiemThuDetai'
        ]);

        Route::get('/mau6hdntdt/{topicID?}', [
            'as' => 'admin.form.mau6hdntdt',
            'uses' => 'FormController@showHopHoidong'
        ]);

        Route::resource('get_topic_data', 'FormController@get');
        Route::resource('get_status', 'FormController@getStatus');
    });
}); // admin


/* ===================== Trang quản trị (dành cho Cán bộ, đơn vị trung tâm nghiên cứu) =================== */
Route::group(['prefix' => 'researcher'], function() {
        Route::get('document', [
            'as' => 'researcher.document',
            'uses' => 'Category\DocumentController@showDocument'
        ]);

        //Cập nhật sản phẩm khoa học
        Route::group(['prefix' => 'product'], function() {
            Route::get('create', [
            'as' => 'researcher.product.create',
            'uses' => 'Researcher\ProductController@create'
            ]);

            Route::post('store', [
                'as' => 'researcher.product.store',
                'uses' => 'Researcher\ProductController@store'
            ]);

            Route::get('/', [
                'as' => 'researcher.product.index',
                'uses' => 'Researcher\ProductController@index'
            ]);

            Route::get('edit/{id}', [
                'as' => 'researcher.product.edit',
                'uses' => 'Researcher\ProductController@edit'
            ]);

            Route::post('update/{id}', [
                'as' => 'researcher.product.update',
                'uses' => 'Researcher\ProductController@update'
            ]);

            Route::post('delete/{id}', [
                'as' => 'researcher.product.delete',
                'uses' => 'Researcher\ProductController@destroy'
            ]);
        });
        //

        //Cập nhật thông tin đề cương
        Route::group(['prefix' => 'outline'], function() {
            Route::get('/', [
                'as' => 'researcher.outline',
                'uses' => 'Researcher\OutlineController@index'
            ]);
            Route::get('edit/{id}', [
                'as' => 'researcher.outline.edit',
                'uses' => 'Researcher\OutlineController@edit'
            ]);
            Route::post('update/{id}', [
                'as' => 'researcher.outline.update',
                'uses' => 'Researcher\OutlineController@update'
            ]);
        });

        //Cập nhật thông tin cá nhân
        Route::group(['prefix' => 'information'], function() {
            Route::get('/', [
                'as' => 'researcher.information.index',
                'uses' => 'Researcher\InfomationController@index'
            ]);
            Route::post('update/{id}', [
                'as' => 'researcher.information.update',
                'uses' => 'Researcher\InfomationController@update'
            ]);
        });
        //
        //Đăng ký đề tài
        Route::group(['prefix' => 'registerthread'], function() {
            Route::get('/', [
                'as' => 'researcher.registerthread',
                'uses' => 'Researcher\RegisterThreadController@index'
            ]);
            Route::post('store', [
                'as' => 'researcher.registerthread.store',
                'uses' => 'Researcher\RegisterThreadController@store'
            ]);
        });
        //
        //Danh sách đề tài đang triển khai
        Route::group(['prefix' => 'deploy'], function() {
            Route::get('/', [
                'as' => 'researcher.deploy',
                'uses' => 'Researcher\DeployController@index'
            ]);
            Route::get('show/{id}', [
            'as' => 'researcher.deploy.show',
            'uses' => 'Researcher\DeployController@show'
        	]);
        	Route::resource('resource', 'Researcher\DeployController@resource');
        });
        //
        //Năng lực thành tựu
        Route::group(['prefix' => 'achievement'], function() {
            Route::get('/', [
                'as' => 'researcher.achievement',
                'uses' => 'Researcher\AchievementController@index'
            ]);
            Route::post('store', [
                'as' => 'researcher.achievement.store',
                'uses' => 'Researcher\AchievementController@store'
            ]);
        });
        //
        //Lý lịch khoa học
        Route::group(['prefix' => 'background'], function() {
            Route::get('/', [
                'as' => 'researcher.background',
                'uses' => 'Researcher\BackgroundController@index'
            ]);
            Route::POST('showQTCT', [
                'as' => 'researcher.background.showQTCT',
                'uses' => 'Researcher\BackgroundController@showQTCT'
            ]);
            Route::POST('store', [
                'as' => 'researcher.background.store',
                'uses' => 'Researcher\BackgroundController@store'
            ]);
            Route::POST('edit', [
                'as' => 'researcher.background.edit',
                'uses' => 'Researcher\BackgroundController@edit'
            ]);
            Route::POST('update', [
                'as' => 'researcher.background.update',
                'uses' => 'Researcher\BackgroundController@update'
            ]);
        });
        //
        //Lý lịch khoa học
        Route::group(['prefix' => 'password'], function() {
            Route::get('/', [
                'as' => 'researcher.password',
                'uses' => 'Researcher\PasswordController@index'
            ]);
            Route::POST('oldpassword', [
                'as' => 'researcher.password.oldpassword',
                'uses' => 'Researcher\PasswordController@oldpassword'
            ]);
            Route::POST('update', [
                'as' => 'researcher.password.update',
                'uses' => 'Researcher\PasswordController@update'
            ]);
        });
        //
        //Đề tài chậm muộn
        Route::group(['prefix' => 'delay'], function() {
            Route::get('/', [
                'as' => 'researcher.delay',
                'uses' => 'Researcher\DelayController@index'
            ]);
            Route::post('/', [
                'as' => 'researcher.delay.store',
                'uses' => 'Researcher\DelayController@store'
            ]);
            Route::get('/form/{madt}/{id}', [
                'as' => 'researcher.delay.form',
                'uses' => 'Researcher\DelayController@form'
            ]);
        });
        //
        //Nộp bản mềm chứng nhận
        Route::group(['prefix' => 'certify'], function() {
            Route::get('/', [
                'as' => 'researcher.certify',
                'uses' => 'Researcher\CertifyController@index'
            ]);
            Route::post('update/{id}', [
                'as' => 'researcher.certify.update',
                'uses' => 'Researcher\CertifyController@update'
            ]);
        });
        //
        //Đăng ký bảo vệ đề tài
        Route::group(['prefix' => 'registration'], function() {
            Route::get('/', [
                'as' => 'researcher.registration',
                'uses' => 'Researcher\RegistrationController@index'
            ]);
            Route::post('store', [
                'as' => 'researcher.registration.store',
                'uses' => 'Researcher\RegistrationController@store'
            ]);
        });
    });

/* ================================= Lý lịch khoa học ================================= */
Route::group(['prefix' => 'science'], function() {
    Route::get('/', [   //Mượn action của Business
        'as' => 'science.index',
        'uses' => 'Researcher\BusinessController@index'
    ]);

    Route::group(['prefix' => 'business'], function() {
        Route::post('store', [
            'as' => 'science.business.store',
            'uses' => 'Researcher\BusinessController@store'
        ]);

        Route::post('delete/{id}', [
            'as' => 'science.business.delete',
            'uses' => 'Researcher\BusinessController@destroy'
        ]);

        Route::get('edit/{id}', [
            'as' => 'science.business.edit',
            'uses' => 'Researcher\BusinessController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'science.business.update',
            'uses' => 'Researcher\BusinessController@update'
        ]);
    });  // quá trình công tác

    Route::group(['prefix' => 'specialize'], function() {
        Route::post('store', [
            'as' => 'science.specialize.store',
            'uses' => 'Researcher\SpecializeController@store'
        ]);

        Route::post('delete/{id}', [
            'as' => 'science.specialize.delete',
            'uses' => 'Researcher\SpecializeController@destroy'
        ]);

        Route::get('edit/{id}', [
            'as' => 'science.specialize.edit',
            'uses' => 'Researcher\SpecializeController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'science.specialize.update',
            'uses' => 'Researcher\SpecializeController@update'
        ]);
    }); // quá trình chuyên môn

    Route::group(['prefix' => 'foster'], function() {
        Route::post('store', [
            'as' => 'science.foster.store',
            'uses' => 'Researcher\FosterController@store'
        ]);

        Route::get('edit/{id}', [
            'as' => 'science.foster.edit',
            'uses' => 'Researcher\FosterController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'science.foster.update',
            'uses' => 'Researcher\FosterController@update'
        ]);

        Route::post('delete/{id}', [
            'as' => 'science.foster.delete',
            'uses' => 'Researcher\FosterController@destroy'
        ]);
    }); // quá trình bồi dưỡng


    Route::group(['prefix' => 'work'], function() {
        Route::post('store', [
            'as' => 'science.work.store',
            'uses' => 'Researcher\WorkController@store'
        ]);

        Route::post('delete/{id}', [
            'as' => 'science.work.delete',
            'uses' => 'Researcher\WorkController@destroy'
        ]);

        Route::get('edit/{id}', [
            'as' => 'science.work.delete',
            'uses' => 'Researcher\WorkController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'science.work.update',
            'uses' => 'Researcher\WorkController@update'
        ]);
    });

    Route::group(['prefix' => 'publication'], function() {
        Route::post('store', [
            'as' => 'science.publication.store',
            'uses' => 'Researcher\PublicationController@store'
        ]);

        Route::post('delete/{id}', [
            'as' => 'science.publication.delete',
            'uses' => 'Researcher\PublicationController@destroy'
        ]);

        Route::get('edit/{id}', [
            'as' => 'science.publication.delete',
            'uses' => 'Researcher\PublicationController@edit'
        ]);

        Route::post('update/{id}', [
            'as' => 'science.publication.update',
            'uses' => 'Researcher\PublicationController@update'
        ]);
    });
}); // Lý lịch khoa học

Route::get('notification', [   //Mượn action của Business
    'as' => 'notification.index',
    'uses' => 'PushNotificationController@index'
]);

Route::group(['prefix' => 'development'], function() {
    Route::get('manual', [
        'as' => 'development.manual.create',
        'uses' => 'ManualController@create'
    ]);

    Route::post('store', [
        'as' => 'development.manual.store',
        'uses' => 'ManualController@store'
    ]);

    Route::get('/', [
        'as' => 'development.manual.index',
        'uses' => 'ManualController@index'
    ]);
});

Route::group(['prefix' => 'manual', 'middleware' => array('auth')], function() {
    Route::get('/{id?}', [
        'as' => 'development.manual.show',
        'uses' => 'ManualController@show'
    ]);


    Route::get('edit/{id}', [
        'as' => 'development.manual.edit',
        'uses' => 'ManualController@edit'
    ]);

    Route::post('update/{id}', [
        'as' => 'development.manual.update',
        'uses' => 'ManualController@update'
    ]);
});

