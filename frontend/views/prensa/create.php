<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Prensa */

$this->title = 'Create Prensa';
$this->params['breadcrumbs'][] = ['label' => 'Prensas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prensa-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
