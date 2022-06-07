<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'My Yii Application';

$this->registerCssFile("/thema/style.css");
$this->registerCssFile("/thema/icon-font.min.css");

$perfil = Yii::$app->user->id
?>

<div class="site-index">

    <div class=" text-center bg-transparent">
        <h2 class="display-4">¡Bienvenido!</h2>

    </div>
    <br>

    <div class="body-content">
        <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
            <div class="card">
                <img class="card-img-top" src="/img/medio.jpg" alt="Unsplash">
                <div class="card-header">
                    <h5 class="card-title mb-0">Padrón de Medios de Comunicación</h5>
                </div>
                <div class="card-body">
                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                    <!--<a href="#" class="btn btn-primary">Ver Perfil</a>-->
                    <?= Html::a('Ver Perfil', ['prensa/profile', 'id' => $perfil], ['class' => 'btn btn-success']) ?>
                </div>
            </div>
        </div>
<!--        <div class="faq-wrap">
            <h4 class="mb-20 h4 text-blue">Accordion example</h4>
            <div id="accordion">
                <div class="card">
                    <div class="card-header">
                        <button class="btn btn-block" data-toggle="collapse" data-target="#faq1">
                            <strong>Secretaria del ayuntamiento</strong>
                        </button>
                    </div>
                    <div id="faq1" class="collapse show" data-parent="#accordion">
                        <div class="card-body">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                                    <div class="card card-box">
                                        <img class="card-img-top" src="/images/hone.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class=" weight-500" style="font-size: 18px;font-weight: 600;padding-top: 3%">Carta</h5>
                                            <p class="card-text">MODO HONESTO DE VIDA</p>

                                            <?=
                                            Html::a('Iniciar trámite', ['modo-honesto/create'], [
                                                'class' => 'btn btn-primary',
                                                'id' => 'btnhonesto',
                                                'data' => [
                                                    'confirm' => '¿Seguro que quieres trámitar la carta?',
                                                //'method' => 'post',
                                                ],
                                            ])
                                            ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                                    <div class="card card-box">
                                        <img class="card-img-top" src="/images/conducta.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class=" weight-500" style="font-size: 18px;font-weight: 600;padding-top: 3%">Carta</h5>
                                            <p class="card-text">BUENA CONDUCTA</p>
                                            <a href="#" class="btn btn-primary">Iniciar trámite</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                                    <div class="card card-box">
                                        <img class="card-img-top" src="/images/residencia.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class=" weight-500" style="font-size: 18px;font-weight: 600;padding-top: 3%">Carta</h5>
                                            <p class="card-text">RESIDENCIA</p>
                                            <a href="#" class="btn btn-primary">Iniciar trámite</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                                    <div class="card card-box">
                                        <img class="card-img-top" src="/images/residencia2.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class=" weight-500" style="font-size: 18px;font-weight: 600;padding-top: 3%">Carta</h5>
                                            <p class="card-text">RESIDENCIA MENOR</p>
                                            <a href="#" class="btn btn-primary">Iniciar trámite</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                                    <div class="card card-box">
                                        <img class="card-img-top" src="/images/residencia3.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class=" weight-500" style="font-size: 18px;font-weight: 600;padding-top: 3%">Carta</h5>
                                            <p class="card-text">RESIDENCIA U.S.A.</p>
                                            <a href="#" class="btn btn-primary">Iniciar trámite</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-30">
                                    <div class="card card-box">
                                        <img class="card-img-top" src="/images/dinero.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class=" weight-500" style="font-size: 18px;font-weight: 600;padding-top: 3%">Carta</h5>
                                            <p class="card-text">INGRESOS</p>
                                            <a href="#" class="btn btn-primary">Iniciar trámite</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#faq2">
                                            Collapsible Group Item #2
                                        </button>
                                    </div>
                                    <div id="faq2" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#faq3">
                                            Collapsible Group Item #3
                                        </button>
                                    </div>
                                    <div id="faq3" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
                                            <p class="mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#faq4">
                                            Collapsible Group Item #4
                                        </button>
                                    </div>
                                    <div id="faq4" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#faq5">
                                            Collapsible Group Item #5
                                        </button>
                                    </div>
                                    <div id="faq5" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <button class="btn btn-block collapsed" data-toggle="collapse" data-target="#faq6">
                                            Collapsible Group Item #6
                                        </button>
                                    </div>
                                    <div id="faq6" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
                                            <p class="mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
                                        </div>
                                    </div>
                                </div>
            </div>

        </div>
                <div class="row">
                    <div class="">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="">
                                                    <div class=" text-center">
                                                        <img src="/img/ayuda.png" class="" width="60" alt="logo">    
                                                    </div>
                                                </div>
        
                                            </div>
                                            <br>
                                            <div class="mb-0 text-center">
                                                <a class="  " href="/index.php/apoyos/nuevo/">
                                                    <h3 class="mt-1 mb-3">APOYOS A LA CIUDADANÍA</h3>                        
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="">
                                                    <div class=" text-center">
                                                        <img src="/img/artista.png" class="" width="60" alt="logo">    
                                                    </div>
                                                </div>
        
                                            </div>
                                            <br>
                                            <div class="mb-0 text-center">
                                                <a class="  " href="/index.php/">
                                                    <h3 class="mt-1 mb-3">Inscripción Unica Escuela de Iniciación Artistica</h3>                        
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
        
                        </div>
                    </div>
        
                </div>        -->

    </div>
</div>
