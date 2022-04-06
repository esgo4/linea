<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\TiposCartas */

$this->title = 'Update Tipos Cartas: ' . $model->id_tipo_carta;
$this->params['breadcrumbs'][] = ['label' => 'Tipos Cartas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_tipo_carta, 'url' => ['view', 'id_tipo_carta' => $model->id_tipo_carta]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tipos-cartas-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
