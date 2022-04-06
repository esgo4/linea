<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\ModoHonesto */
/* @var $form yii\widgets\ActiveForm */
?>
<?php $form = ActiveForm::begin(); ?>

<div class="modo-honesto-form">
    <div class="row">
        <div class=" col-lg-12">
            <div class="card">
                <div class="card-header">                    
                    <h1 class="card-title ">  </h1>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'apellido_paterno')->textInput(['maxlength' => true]) ?>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'apellido_materno')->textInput(['maxlength' => true]) ?>
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="col-md-2 col-sm-12">
                            <?= $form->field($model, 'edad')->textInput(['maxlength' => true]) ?>
                        </div> 
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'nacionalidad')->textInput(['value' => 'MEXICANA','maxlength' => true]) ?>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'originario')->textInput(['value' => 'URUAPAN, MICHOACÁN','maxlength' => true]) ?>
                        </div>                                              
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'calle')->textInput(['maxlength' => true]) ?>
                        </div> 
                        <div class="col-md-3 col-sm-12">
                            <?= $form->field($model, 'numero')->textInput(['maxlength' => true]) ?>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <?= $form->field($model, 'colonia')->textInput(['maxlength' => true]) ?>
                        </div>                                              
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-12">
                            <?= $form->field($model, 'codigo_postal')->textInput(['maxlength' => true]) ?>
                        </div>                                                                      
                    </div>
                </div>
            </div>
        </div>
    </div>

   <div class="form-group">
        <?= Html::submitButton('Enviar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
