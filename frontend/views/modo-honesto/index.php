<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ModoHonestoBuscar */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Modo Honestos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="modo-honesto-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Modo Honesto', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombres',
            'apellido_paterno',
            'apellido_materno',
            'nom_c',
            //'nacionalidad',
            //'edad',
            //'originario',
            //'numero',
            //'calle',
            //'colonia',
            //'codigo_postal',
            //'foto',
            //'fecha',
            //'num_recibo',
            //'monto_recibo',
            //'observaciones',
            //'secretario',
            //'ini_secretario',
            //'usuario',
            //'ini_usuario',
            //'tipo_carta_id',
            //'documento:ntext',
            //'firmado',
            //'firma_digital',
            //'folio',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
