<?php
/*
 * This file is part of the 2amigos/yii2-usuario project.
 *
 * (c) 2amigOS! <http://2amigos.us/>
 *
 * For the full copyright and license information, please view
 * the LICENSE file that was distributed with this source code.
 */

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View                   $this
 * @var \Da\User\Form\RegistrationForm $model
 * @var \Da\User\Model\User            $user
 * @var \Da\User\Module                $module
 */
$this->title = Yii::t('usuario', 'Sign up');
$this->params['breadcrumbs'][] = $this->title;
?>

<main class="d-flex w-100" style="font-family: 'Montserrat', sans-serif;">
    <div class="container d-flex flex-column">
        <div class="row vh-100">
            <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                <div class="d-table-cell align-middle">                     

                    <div class="card">
                        <div class="card-body">
                            <div class="m-sm-4">
                                <div class="text-center">
                                    <img src="/img/img.png" alt="Logo" class="" width="380"  />
                                </div> 
                                
                                <div class="text-center mt-4">
                                    <h1 class="h2">Registrarse</h1> 
                                    <p class="lead">
					Completa tu información
                                    </p>
                                </div>
                                
                                <?php
                                $form = ActiveForm::begin(
                                                [
                                                    'id' => $model->formName(),
                                                    'enableAjaxValidation' => true,
                                                    'enableClientValidation' => false,
                                                ]
                                );
                                ?>
                                <div class="mb-3">
                                    <?= $form->field($model, 'email')->textInput(['autofocus' => true]) ?>
                                </div>

                                <div class="mb-3">
                                    <?= $form->field($model, 'curp') ?>
                                </div>                                               

                                <div class="mb-3">
                                    <?php if ($module->generatePasswords === false): ?>
                                        <?= $form->field($model, 'password')->passwordInput() ?>
                                    <?php endif ?>
                                </div>

                                <div class="mb-3">
                                    <?php if ($module->enableGdprCompliance): ?>
                                        <?= $form->field($model, 'gdpr_consent')->checkbox(['value' => 1]) ?>
                                    <?php endif ?>
                                </div>

                                <div class="text-center mt-3">
                                    <?= Html::submitButton(Yii::t('usuario', 'Sign up'), ['class' => 'btn btn-success btn-lg']) ?>
                                </div>


                                <?php ActiveForm::end(); ?>
                                
                                <p class="text-center">
                                    <?= Html::a(Yii::t('usuario', 'Already registered? Sign in!'), ['/user/security/login']) ?>
                                </p>
                
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</main>

