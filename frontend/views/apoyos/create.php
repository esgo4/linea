<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Apoyos */

$this->title = 'Create Apoyos';
$this->params['breadcrumbs'][] = ['label' => 'Apoyos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="apoyos-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
