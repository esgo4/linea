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
 * @var yii\web\View               $this
 * @var yii\widgets\ActiveForm     $form
 * @var \Da\User\Form\RecoveryForm $model
 */
$this->title = Yii::t('usuario', 'Reset your password');
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
</style>
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
                                <div class="text-center mt-4" >
                                    <h1 class="h2">Bienvenido</h1>
                                    <p class="lead">
                                        Restablecer su contraseña
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
                                    <?= $form->field($model, 'password')->passwordInput() ?>
                                </div>
                                <div class="text-center mt-3">
                                    <?= Html::submitButton(Yii::t('usuario', 'Finish'), ['class' => 'btn btn-success btn-block']) ?><br>
                                </div>

                            </div>
                        </div>


                        <?php ActiveForm::end(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

