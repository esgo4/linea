<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Residencia */

$this->title = 'Create Residencia';
$this->params['breadcrumbs'][] = ['label' => 'Residencias', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="residencia-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
