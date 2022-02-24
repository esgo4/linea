<?php

/*
 * This file is part of the 2amigos/yii2-usuario project.
 *
 * (c) 2amigOS! <http://2amigos.us/>
 *
 * For the full copyright and license information, please view
 * the LICENSE file that was distributed with this source code.
 */

use Da\User\Widget\ConnectWidget;
use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View            $this
 * @var \Da\User\Form\LoginForm $model
 * @var \Da\User\Module         $module
 */

$this->title = Yii::t('usuario', 'mi inicio');
$this->params['breadcrumbs'][] = $this->title;
?>

<?= $this->render('/shared/_alert', ['module' => Yii::$app->getModule('user')]) ?>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
</style>
<main class="d-flex w-100" style="font-family: 'Montserrat', sans-serif;">
    <div class="container d-flex flex-column">
        <div class="row vh-100">
            <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                <div class="d-table-cell align-middle">      
                    
                    <div class="text-center mt-4" >
                        <h1 class="h2">Bienvenido</h1>
                            <p class="lead">
                                Inicia sesión en tu cuenta para continuar
                            </p>
                    </div>
            
                    <div class="card">
                        <div class="card-body">
                            <div class="m-sm-4">
                                <div class="text-center">
                                    <img src="/img/img.png" alt="Logo" class="" width="380"  />
                                </div>
                                <?php $form = ActiveForm::begin(
                                    [
                                        'id' => $model->formName(),
                                        'enableAjaxValidation' => true,
                                        'enableClientValidation' => false,
                                        'validateOnBlur' => false,
                                        'validateOnType' => false,
                                        'validateOnChange' => false,
                                    ]
                                ) ?>

                                <div class="mb-3">
                                     <?= $form->field(
                                        $model,
                                        'login',
                                        ['inputOptions' => ['autofocus' => 'autofocus', 'class' => 'form-control', 'tabindex' => '1']]
                                    ) ?>
                                </div>

                                <div class="mb-3">
                                     <?= $form
                                        ->field(
                                            $model,
                                            'password',
                                            ['inputOptions' => ['class' => 'form-control', 'tabindex' => '2']]
                                        )
                                        ->passwordInput()
                                        ->label(
                                            Yii::t('usuario', 'Password')
                                            . ($module->allowPasswordRecovery ?
                                                ' (' . Html::a(
                                                    Yii::t('usuario', 'Forgot password?'),
                                                    ['/user/recovery/request'],
                                                    ['tabindex' => '5']
                                                )
                                                . ')' : '')
                                    ) ?>
                                </div>
                                <!--?= $form->field($model, 'rememberMe')->checkbox(['tabindex' => '4']) ?-->

                                <div class="text-center mt-3">
                                    <?= Html::submitButton(
                                       Yii::t('usuario', 'Sign in'),
                                       ['class' => 'btn btn-primary btn-lg', 'tabindex' => '3']
                                   ) ?>
                                </div>
                                <?php ActiveForm::end(); ?>
                            </div>
                        </div>
                    </div>
                
                    <?php if ($module->enableEmailConfirmation): ?>
                        <p class="text-center">
                            <?= Html::a(
                                Yii::t('usuario', 'Didn\'t receive confirmation message?'),
                                ['/user/registration/resend']
                            ) ?>
                        </p>
                    <?php endif ?>
                    <?php if ($module->enableRegistration): ?>
                        <p class="text-center">
                            <?= Html::a(Yii::t('usuario', 'Don\'t have an account? Sign up!'), ['/user/registration/register']) ?>
                        </p>
                    <?php endif ?>
                    <?= ConnectWidget::widget(
                        [
                            'baseAuthUrl' => ['/user/security/auth'],
                        ]
                    ) ?>
                </div>
            </div>
        </div>
    </div>
</main>


