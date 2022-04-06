<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Residencia */

$this->title = 'Update Residencia: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Residencias', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="residencia-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
