<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //'css/site.css',
        'thema/css/app.css',
        
        
    ];
    public $js = [
        'thema/js/app.js',        
                
    ];
    public $depends = [
        //'yii\web\JqueryAsset',
            'yii\web\YiiAsset',
        'yii\bootstrap4\BootstrapAsset',
    ];
}
