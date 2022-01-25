<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Apoyos */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="apoyos-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'fecha')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'folio')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'representante')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tipo_apoyo')->textInput() ?>

    <?= $form->field($model, 'descripcion')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'estatus')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'respuesta')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'id_usuario')->textInput() ?>

    <?= $form->field($model, 'id_tramite')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
