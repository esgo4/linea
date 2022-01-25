<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Secretarias */

$this->title = 'Create Secretarias';
$this->params['breadcrumbs'][] = ['label' => 'Secretarias', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="secretarias-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
