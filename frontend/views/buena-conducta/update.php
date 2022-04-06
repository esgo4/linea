<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\BuenaConducta */

$this->title = 'Update Buena Conducta: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Buena Conductas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="buena-conducta-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
