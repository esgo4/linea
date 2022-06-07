<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
use kartik\date\DatePicker;
use kartik\file\FileInput;

$this->title = 'My Yii Application';
?>

<?php $form = ActiveForm::begin(); ?>
<div class="site-index">  

    <div class="body-content">
        <div class="row">
            <div class="container-fluid p-0">

                <div class="mb-3">
                    <h1 class="h3 d-inline align-middle">Perfil</h1>
                    <!--                    <a class="badge bg-dark text-white ms-2" href="upgrade-to-pro.html">
                                            Get more page examples
                                        </a>-->
                </div>
                <div class="row">
                    <div class="col-md-4 col-xl-3">
                        <div class="card mb-3">
                            <div class="card-header">
                                <!--<h5 class="card-title mb-0">Profile Details</h5>-->
                            </div>                            
                            <div class="card-body text-center">
                                <img src="/img/us.png" alt="Christina Mason" class="img-fluid  mb-2" width="128" height="128" />
                                <h5 class="card-title mb-0"></h5>
                                <div class="text-muted mb-2">Lead Developer</div>
                                <div>
                                    <a class="btn btn-primary btn-sm" href="#">Follow</a>
                                    <a class="btn btn-primary btn-sm" href="#"><span data-feather="message-square"></span> Message</a>
                                </div>
                            </div>
                            <hr class="my-0" />
                            <div class="card-body">
                                <h5 class="h6 card-title">Skills</h5>
                                <a href="#" class="badge bg-primary me-1 my-1">HTML</a>
                                <a href="#" class="badge bg-primary me-1 my-1">JavaScript</a>
                                <a href="#" class="badge bg-primary me-1 my-1">Sass</a>
                                <a href="#" class="badge bg-primary me-1 my-1">Angular</a>
                                <a href="#" class="badge bg-primary me-1 my-1">Vue</a>
                                <a href="#" class="badge bg-primary me-1 my-1">React</a>
                                <a href="#" class="badge bg-primary me-1 my-1">Redux</a>
                                <a href="#" class="badge bg-primary me-1 my-1">UI</a>
                                <a href="#" class="badge bg-primary me-1 my-1">UX</a>
                            </div>
                            <hr class="my-0" />
                            <div class="card-body">
                                <h5 class="h6 card-title">About</h5>
                                <ul class="list-unstyled mb-0">
                                    <li class="mb-1"><span data-feather="home" class="feather-sm me-1"></span> Lives in <a href="#">San Francisco, SA</a></li>

                                    <li class="mb-1"><span data-feather="briefcase" class="feather-sm me-1"></span> Works at <a href="#">GitHub</a></li>
                                    <li class="mb-1"><span data-feather="map-pin" class="feather-sm me-1"></span> From <a href="#">Boston</a></li>
                                </ul>
                            </div>
                            <hr class="my-0" />
                            <div class="card-body">
                                <h5 class="h6 card-title">Elsewhere</h5>
                                <ul class="list-unstyled mb-0">
                                    <li class="mb-1"><a href="#">staciehall.co</a></li>
                                    <li class="mb-1"><a href="#">Twitter</a></li>
                                    <li class="mb-1"><a href="#">Facebook</a></li>
                                    <li class="mb-1"><a href="#">Instagram</a></li>
                                    <li class="mb-1"><a href="#">LinkedIn</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 col-xl-9">
                        <div class="card">
                            <div class="card-header">

                                <h5 class="card-title mb-0">Información</h5>
                            </div>
                            <div class="card-body h-100">
                                <div class="row">
                                    <div class="col-md-3 col-xs-12">
                                        <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>
                                    </div>
                                    <div class="col-md-3 col-xs-12">
                                        <?= $form->field($model, 'razon_social')->textInput(['maxlength' => true]) ?>
                                    </div>
                                    <div class="col-md-3 col-xs-12">
                                        <?= $form->field($model, 'telefono')->textInput(['maxlength' => true]) ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-xs-12">
                                        <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>
                                    </div>
                                    <div class="col-md-3 col-xs-12">
                                        <?=
                                        $form->field($model, 'fecha_creacion')->widget(DatePicker::className(), [
                                            'name' => 'dp_2',
                                            'type' => DatePicker::TYPE_INPUT,
                                            //'value' => 'null',
                                            'pluginOptions' => [
                                                'autoclose' => true,
                                                'format' => 'yyyy-mm-dd'
                                            ]
                                        ])
                                        ?>
                                    </div>
                                    <div class="col-md-3 col-xs-12">
                                        <?= $form->field($model, 'rfc')->textInput(['maxlength' => true]) ?>
                                    </div>

                                </div>
                                <hr/>
                                <div class="row">

                                    <div class="col-md-4 col-sm-12">

                                        <?=
                                        $form->field($model, 'constancia_rfc')->widget(FileInput::classname(), [
                                            'options' => [
                                                //'accept' => 'image/*',
                                                'multiple' => false
                                            ],
                                            'language' => 'es',
                                            'pluginOptions' => [
                                                'showPreview' => false,
                                                'showRemove' => true,
                                                'showCancel' => false,
                                                'allowedFileExtensions' => ['pdf'],
                                                'showUpload' => false,
                                                'inputGroupClass' => 'input-group-sm'
//                                    'showCaption' => false,                                                                       
//                                    'browseClass' => 'btn btn-sm btn-success',                                    
//                                    'uploadClass' => 'btn btn-info',
//                                    'removeClass' => 'btn btn-danger',
//                                    'removeIcon' => '<i class="fas fa-trash"></i> ',
//                                    'browseClass' => 'btn btn-primary btn-block',
//                                    'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
//                                    'browseLabel' => 'Subir Documentos'
                                            ],
                                        ])
                                        ?>
                                    </div>
                                    <div class="col-md-4 col-sm-12">
                                        <?=
                                        $form->field($model, 'comprobante_domicilio')->widget(FileInput::classname(), [
                                            'options' => [
                                                //'accept' => 'image/*',
                                                'multiple' => false
                                            ],
                                            'language' => 'es',
                                            'pluginOptions' => [
                                                'showPreview' => false,
                                                'showRemove' => true,
                                                'showCancel' => false,
                                                'allowedFileExtensions' => ['pdf'],
                                                'showUpload' => false,
                                                'inputGroupClass' => 'input-group-sm'
//                                    'showCaption' => false,                                                                       
//                                    'browseClass' => 'btn btn-sm btn-success',                                    
//                                    'uploadClass' => 'btn btn-info',
//                                    'removeClass' => 'btn btn-danger',
//                                    'removeIcon' => '<i class="fas fa-trash"></i> ',
//                                    'browseClass' => 'btn btn-primary btn-block',
//                                    'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
//                                    'browseLabel' => 'Subir Documentos'
                                            ],
                                        ])
                                        ?>
                                    </div>
                                    <div class="col-md-4 col-sm-12">
                                        <?=
                                        $form->field($model, 'opinion_cumplimiento')->widget(FileInput::classname(), [
                                            'options' => [
                                                //'accept' => 'image/*',
                                                'multiple' => false
                                            ],
                                            'language' => 'es',
                                            'pluginOptions' => [
                                                'showPreview' => false,
                                                'showRemove' => true,
                                                'showCancel' => false,
                                                'allowedFileExtensions' => ['pdf'],
                                                'showUpload' => false,
                                                'inputGroupClass' => 'input-group-sm'
//                                    'showCaption' => false,                                                                       
//                                    'browseClass' => 'btn btn-sm btn-success',                                    
//                                    'uploadClass' => 'btn btn-info',
//                                    'removeClass' => 'btn btn-danger',
//                                    'removeIcon' => '<i class="fas fa-trash"></i> ',
//                                    'browseClass' => 'btn btn-primary btn-block',
//                                    'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
//                                    'browseLabel' => 'Subir Documentos'
                                            ],
                                        ])
                                        ?>
                                    </div>
                                </div>
                                <br> 
                                <div class="row">

                                    <div class="col-md-4 col-sm-12">

                                        <?=
                                        $form->field($model, 'declaracion_anual')->widget(FileInput::classname(), [
                                            'options' => [
                                                //'accept' => 'image/*',
                                                'multiple' => false
                                            ],
                                            'language' => 'es',
                                            'pluginOptions' => [
                                                'showPreview' => false,
                                                'showRemove' => true,
                                                'showCancel' => false,
                                                'allowedFileExtensions' => ['pdf'],
                                                'showUpload' => false,
                                                'inputGroupClass' => 'input-group-sm'
//                                    'showCaption' => false,                                                                       
//                                    'browseClass' => 'btn btn-sm btn-success',                                    
//                                    'uploadClass' => 'btn btn-info',
//                                    'removeClass' => 'btn btn-danger',
//                                    'removeIcon' => '<i class="fas fa-trash"></i> ',
//                                    'browseClass' => 'btn btn-primary btn-block',
//                                    'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
//                                    'browseLabel' => 'Subir Documentos'
                                            ],
                                        ])
                                        ?>
                                    </div>
                                    <div class="col-md-4 col-sm-12">
                                        <?=
                                        $form->field($model, 'redes_sociales')->widget(FileInput::classname(), [
                                            'options' => [
                                                //'accept' => 'image/*',
                                                'multiple' => false
                                            ],
                                            'language' => 'es',
                                            'pluginOptions' => [
                                                'showPreview' => false,
                                                'showRemove' => true,
                                                'showCancel' => false,
                                                'allowedFileExtensions' => ['pdf'],
                                                'showUpload' => false,
                                                'inputGroupClass' => 'input-group-sm'
//                                    'showCaption' => false,                                                                       
//                                    'browseClass' => 'btn btn-sm btn-success',                                    
//                                    'uploadClass' => 'btn btn-info',
//                                    'removeClass' => 'btn btn-danger',
//                                    'removeIcon' => '<i class="fas fa-trash"></i> ',
//                                    'browseClass' => 'btn btn-primary btn-block',
//                                    'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
//                                    'browseLabel' => 'Subir Documentos'
                                            ],
                                        ])
                                        ?>
                                    </div>
                                    <div class="col-md-4 col-sm-12">
                                        <?=
                                        $form->field($model, 'carta_protesta')->widget(FileInput::classname(), [
                                            'options' => [
                                                //'accept' => 'image/*',
                                                'multiple' => false
                                            ],
                                            'language' => 'es',
                                            'pluginOptions' => [
                                                'showPreview' => false,
                                                'showRemove' => true,
                                                'showCancel' => false,
                                                'allowedFileExtensions' => ['pdf'],
                                                'showUpload' => false,
                                                'inputGroupClass' => 'input-group-sm'
//                                    'showCaption' => false,                                                                       
//                                    'browseClass' => 'btn btn-sm btn-success',                                    
//                                    'uploadClass' => 'btn btn-info',
//                                    'removeClass' => 'btn btn-danger',
//                                    'removeIcon' => '<i class="fas fa-trash"></i> ',
//                                    'browseClass' => 'btn btn-primary btn-block',
//                                    'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
//                                    'browseLabel' => 'Subir Documentos'
                                            ],
                                        ])
                                        ?>
                                    </div>
                                </div>                           
                                

                                <hr />
                                <div class="d-grid">
                                     <?= Html::submitButton('Enviar', ['class' => 'btn btn-success']) ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>        

    </div>

    <?php ActiveForm::end(); ?>
</div>
