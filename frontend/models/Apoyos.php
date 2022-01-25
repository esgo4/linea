<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "apoyos".
 *
 * @property int $id
 * @property string $fecha
 * @property string $folio
 * @property string $representante
 * @property int $tipo_apoyo
 * @property string|null $descripcion
 * @property string|null $estatus
 * @property string|null $respuesta
 * @property int|null $id_usuario
 * @property int|null $id_tramite
 */
class Apoyos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'apoyos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha', 'folio', 'representante', 'tipo_apoyo'], 'required'],
            [['tipo_apoyo', 'id_usuario', 'id_tramite'], 'integer'],
            [['descripcion', 'respuesta'], 'string'],
            [['fecha', 'representante', 'estatus'], 'string', 'max' => 255],
            [['folio'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fecha' => 'Fecha',
            'folio' => 'Folio',
            'representante' => 'Representante',
            'tipo_apoyo' => 'Tipo Apoyo',
            'descripcion' => 'Descripcion',
            'estatus' => 'Estatus',
            'respuesta' => 'Respuesta',
            'id_usuario' => 'Id Usuario',
            'id_tramite' => 'Id Tramite',
        ];
    }
}
