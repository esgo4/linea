<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\BuenaConductaBuscar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="buena-conducta-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'nombres') ?>

    <?= $form->field($model, 'apellido_paterno') ?>

    <?= $form->field($model, 'apellido_materno') ?>

    <?= $form->field($model, 'nom_c') ?>

    <?php // echo $form->field($model, 'nacionalidad') ?>

    <?php // echo $form->field($model, 'edad') ?>

    <?php // echo $form->field($model, 'originario') ?>

    <?php // echo $form->field($model, 'numero') ?>

    <?php // echo $form->field($model, 'calle') ?>

    <?php // echo $form->field($model, 'colonia') ?>

    <?php // echo $form->field($model, 'codigo_postal') ?>

    <?php // echo $form->field($model, 'foto') ?>

    <?php // echo $form->field($model, 'fecha') ?>

    <?php // echo $form->field($model, 'num_recibo') ?>

    <?php // echo $form->field($model, 'monto_recibo') ?>

    <?php // echo $form->field($model, 'observaciones') ?>

    <?php // echo $form->field($model, 'secretario') ?>

    <?php // echo $form->field($model, 'ini_secretario') ?>

    <?php // echo $form->field($model, 'usuario') ?>

    <?php // echo $form->field($model, 'ini_usuario') ?>

    <?php // echo $form->field($model, 'tipo_carta_id') ?>

    <?php // echo $form->field($model, 'documento') ?>

    <?php // echo $form->field($model, 'firmado') ?>

    <?php // echo $form->field($model, 'firma_digital') ?>

    <?php // echo $form->field($model, 'folio') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
