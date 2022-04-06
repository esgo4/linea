<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\ModoHonesto */

$this->title = 'Completa el formulario para generar tu documento';
//$this->params['breadcrumbs'][] = ['label' => 'Modo Honestos', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="modo-honesto-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
