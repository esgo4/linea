<?php


return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset', // GENERAL
        '@npm' => '@vendor/npm-asset',
    ],
    'language' => 'es-MX',
    'sourceLanguage' => 'es-MX',
    'name' => 'Tramites linea',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules' => [
        'user' => [
            'class' => Da\User\Module::class,
            'enableEmailConfirmation' => false,
            'generatePasswords' => false,
            'enableRegistration' => true,
            'administrators' => ['esaul'],
            'mailParams' => [
                'fromEmail' => 'no-reply@example.com',
                'welcomeMailSubject' => Yii::t('usuario', 'Welcome to {welcome tramites}'),
                'confirmationMailSubject' => Yii::t('usuario', 'Confirm account on {confirmation}'),
                'reconfirmationMailSubject' => Yii::t('usuario', 'Confirm email change on {0}'),
                'recoveryMailSubject' => Yii::t('usuario', 'Complete password reset on {0}'),
            ],
        // 'rememberLoginLifespan'   => 72, 576, 000,
        // ...other configs from here: [Configuration Options](installation/configuration-options.md), e.g.
        // 'generatePasswords' => true,
        // 'switchIdentitySessionKey' => 'myown_usuario_admin_user_key',
        ],
    /* 'gridview' => [
      'class' => '\kartik\grid\Module'
      // enter optional module parameters below - only if you need to
      // use your own export download action or custom translation
      // message source
      // 'downloadAction' => 'gridview/export/download',
      // 'i18n' => []
      ], */
    ],
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],
];
