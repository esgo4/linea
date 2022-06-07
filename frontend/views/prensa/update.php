<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Prensa */

$this->title = 'Update Prensa: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Prensas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="prensa-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
