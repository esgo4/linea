<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model app\models\Direcciones */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="direcciones-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'activo')->textInput() ?>

    <?= $form->field($model, 'idsecretaria')->widget(Select2::classname(), [                                          
                                            'language' => 'es',
                                            'data' => $secre,
                                            'options' => [
                                                'placeholder' => 'Selecciona paciente ...',
                                                'id' => 'paciente_select'
                                            ],
//                                            'pluginOptions' => [
//                                                'ajax' => [
//                                                    'url' => Url::to(['/citas/pacientes']),
//                                                    'dataType' => 'json',
//                                                    'data' => new \yii\web\JsExpression('function(params) { return {q:params.term}; }')
//                                                ],
//                                                'allowClear' => true,
//                                            ],
                                        ]); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
