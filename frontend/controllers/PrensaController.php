<?php

namespace frontend\controllers;

use frontend\models\Prensa;
use app\models\PrensaBuscar;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\ForbiddenHttpException;

/**
 * PrensaController implements the CRUD actions for Prensa model.
 */
class PrensaController extends Controller
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
     * Lists all Prensa models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PrensaBuscar();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Prensa model.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }
    
    public function actionProfile($id){
        $usernow = \Yii::$app->user->id; // id user logueado
        $employ = \frontend\models\Prensa::findOne(['user_id' => $id]); //prensa logueado 
        
         if($usernow != $id){
            
            throw new ForbiddenHttpException(\Yii::t('yii', 'You are not allowed to perform this action.'));
            
        }else{
            $model = $this->findModel($employ);
            
            if ($modelDocumentos->load(Yii::$app->request->post())) {
                    //Fotos
                    if (!is_dir(Yii::$app->basePath . '/web/documentos' . '/' . $model->folio)) {
                        mkdir(Yii::$app->basePath . '/web/documentos' . '/' . $model->folio);
                    }
                    Yii::$app->params['uploadPath'] = Yii::$app->basePath . '/web/documentos/' . $model->folio . '/';

                    $curp = \yii\web\UploadedFile::getInstances($modelDocumentos, 'curp');
                    $ine = \yii\web\UploadedFile::getInstances($modelDocumentos, 'ine');
                    $acta_nac = \yii\web\UploadedFile::getInstances($modelDocumentos, 'acta_nacimiento');
                    $comprobante_dom = \yii\web\UploadedFile::getInstances($modelDocumentos, 'comprobante_domicilio');
                    $ine_tutor = \yii\web\UploadedFile::getInstances($modelDocumentos, 'ine_tutor');
                    $credencial_escolar = \yii\web\UploadedFile::getInstances($modelDocumentos, 'credencial_escolar');
                    $curriculum = \yii\web\UploadedFile::getInstances($modelDocumentos, 'curriculum');
                    
                    if (!empty($curp)) {

                        foreach ($curp as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->curp = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->curp = 'curp-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->curp;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    if (!empty($ine)) {

                        foreach ($ine as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->ine = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->ine = 'ine-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->ine;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    if (!empty($acta_nac)) {

                        foreach ($acta_nac as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->acta_nacimiento = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->acta_nacimiento = 'actaN-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->acta_nacimiento;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    if (!empty($comprobante_dom)) {

                        foreach ($comprobante_dom as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->comprobante_domicilio = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->comprobante_domicilio = 'comprob-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->comprobante_domicilio;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    if (!empty($ine_tutor)) {

                        foreach ($ine_tutor as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->ine_tutor = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->ine_tutor = 'inet-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->ine_tutor;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    if (!empty($credencial_escolar)) {

                        foreach ($credencial_escolar as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->credencial_escolar = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->credencial_escolar = 'escolar-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->credencial_escolar;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    if (!empty($curriculum)) {

                        foreach ($curriculum as $img) { // fotos []
                            //$archivo = new \app\models\Documentos();

                            //$modelDocumentos->id_registro = $model->id;
                            $modelDocumentos->id_remude = $model->id;

                            //echo json_encode($archivo->taller_done_id);                    exit();
                            $modelDocumentos->curriculum = $img->name;
                            $exts = explode('.', $img->name);
                            $extension = $img->extension;
                            $ext = strtolower(end($exts));
                            $modelDocumentos->curriculum = 'cv-'.Yii::$app->security->generateRandomString() . ".{$ext}";
                            $path = Yii::$app->params['uploadPath'] . $modelDocumentos->curriculum;
                            $img->saveAs($path);
                            
                            //$modelDocumentos->save();

                            $model->documento = 1;
                            $model->save();
                            //echo json_encode($modelAtender->errors);                    exit();
                            //$model->evidencia_docs = 1;
//                            $model->estatus = 'Técnico';
//                            $model->tecnico = 1;
//                            $model->save();
                            //echo json_encode($archivo->errors);                    exit();
                        }
                    }
                    
                    $modelDocumentos->save();
                    
                    //Fotos
                }


            return $this->redirect(['detalles', 'id' => $model->id]);
            
            
            return $this->render('profile', [
            'model' => $model,          
        ]);
            
        }
        
        
    }

    /**
     * Creates a new Prensa model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Prensa();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Prensa model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Prensa model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Prensa model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Prensa the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Prensa::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
