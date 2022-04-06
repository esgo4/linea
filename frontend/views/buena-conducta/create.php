<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\BuenaConducta */

$this->title = 'Create Buena Conducta';
$this->params['breadcrumbs'][] = ['label' => 'Buena Conductas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="buena-conducta-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
