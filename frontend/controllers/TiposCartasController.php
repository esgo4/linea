<?php

namespace frontend\controllers;

use frontend\models\TiposCartas;
use frontend\models\TiposCartasBuscar;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * TiposCartasController implements the CRUD actions for TiposCartas model.
 */
class TiposCartasController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all TiposCartas models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TiposCartasBuscar();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single TiposCartas model.
     * @param int $id_tipo_carta Id Tipo Carta
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id_tipo_carta)
    {
        return $this->render('view', [
            'model' => $this->findModel($id_tipo_carta),
        ]);
    }

    /**
     * Creates a new TiposCartas model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new TiposCartas();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id_tipo_carta' => $model->id_tipo_carta]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing TiposCartas model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id_tipo_carta Id Tipo Carta
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id_tipo_carta)
    {
        $model = $this->findModel($id_tipo_carta);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id_tipo_carta' => $model->id_tipo_carta]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing TiposCartas model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id_tipo_carta Id Tipo Carta
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id_tipo_carta)
    {
        $this->findModel($id_tipo_carta)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the TiposCartas model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id_tipo_carta Id Tipo Carta
     * @return TiposCartas the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id_tipo_carta)
    {
        if (($model = TiposCartas::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
