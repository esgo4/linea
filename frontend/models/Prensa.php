<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "prensa".
 *
 * @property int $id
 * @property string $nombre
 * @property int $user_id
 * @property string|null $razon_social
 * @property string|null $telefono
 * @property string|null $email
 * @property string|null $fecha_creacion
 * @property string|null $rfc
 * @property string|null $constancia_rfc
 * @property string|null $comprobante_domicilio
 * @property string|null $opinion_cumplimiento
 * @property string|null $declaracion_anual
 * @property string|null $redes_sociales
 * @property string|null $carta_protesta
 *
 * @property User $user
 */
class Prensa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'prensa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'user_id'], 'required'],
            [['user_id'], 'integer'],
            [['fecha_creacion'], 'safe'],
            [['nombre', 'razon_social', 'email'], 'string', 'max' => 100],
            [['telefono'], 'string', 'max' => 10],
            [['rfc', 'constancia_rfc', 'comprobante_domicilio', 'opinion_cumplimiento', 'declaracion_anual', 'redes_sociales', 'carta_protesta'], 'string', 'max' => 255],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => \Da\User\Module::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'user_id' => 'User ID',
            'razon_social' => 'Razon Social',
            'telefono' => 'Telefono',
            'email' => 'Email',
            'fecha_creacion' => 'Fecha Creacion',
            'rfc' => 'Rfc',
            'constancia_rfc' => 'Constancia Rfc',
            'comprobante_domicilio' => 'Comprobante Domicilio',
            'opinion_cumplimiento' => 'Opinion Cumplimiento',
            'declaracion_anual' => 'Declaracion Anual',
            'redes_sociales' => 'Redes Sociales',
            'carta_protesta' => 'Carta Protesta',
        ];
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
