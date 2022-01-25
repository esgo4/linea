<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ApoyosBuscar */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Apoyos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="apoyos-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Apoyos', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'fecha',
            'folio',
            'representante',
            'tipo_apoyo',
            //'descripcion:ntext',
            //'estatus',
            //'respuesta:ntext',
            //'id_usuario',
            //'id_tramite',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
