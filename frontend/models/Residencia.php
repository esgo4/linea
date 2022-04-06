<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "residencia".
 *
 * @property int $id
 * @property string|null $nombres
 * @property string|null $apellido_paterno
 * @property string|null $apellido_materno
 * @property string|null $nom_c
 * @property string|null $nacionalidad
 * @property string|null $edad
 * @property string|null $originario
 * @property string|null $numero
 * @property string|null $calle
 * @property string|null $colonia
 * @property string|null $codigo_postal
 * @property string|null $foto
 * @property string|null $fecha
 * @property string|null $num_recibo
 * @property float|null $monto_recibo
 * @property string|null $observaciones
 * @property string|null $secretario
 * @property string|null $ini_secretario
 * @property string|null $usuario
 * @property string|null $ini_usuario
 * @property int|null $tipo_carta_id
 * @property string|null $documento
 * @property int|null $firmado
 * @property string|null $firma_digital
 * @property string|null $folio
 *
 * @property TiposCartas $tipoCarta
 */
class Residencia extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'residencia';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fecha'], 'safe'],
            [['monto_recibo'], 'number'],
            [['tipo_carta_id', 'firmado'], 'integer'],
            [['documento'], 'string'],
            [['nombres', 'apellido_paterno', 'apellido_materno', 'observaciones'], 'string', 'max' => 128],
            [['nom_c'], 'string', 'max' => 50],
            [['nacionalidad'], 'string', 'max' => 32],
            [['edad', 'originario', 'calle', 'colonia', 'secretario', 'usuario'], 'string', 'max' => 64],
            [['numero', 'codigo_postal', 'num_recibo', 'ini_secretario', 'ini_usuario'], 'string', 'max' => 10],
            [['foto'], 'string', 'max' => 2],
            [['firma_digital', 'folio'], 'string', 'max' => 255],
            [['tipo_carta_id'], 'exist', 'skipOnError' => true, 'targetClass' => TiposCartas::className(), 'targetAttribute' => ['tipo_carta_id' => 'id_tipo_carta']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombres' => 'Nombres',
            'apellido_paterno' => 'Apellido Paterno',
            'apellido_materno' => 'Apellido Materno',
            'nom_c' => 'Nom C',
            'nacionalidad' => 'Nacionalidad',
            'edad' => 'Edad',
            'originario' => 'Originario',
            'numero' => 'Numero',
            'calle' => 'Calle',
            'colonia' => 'Colonia',
            'codigo_postal' => 'Codigo Postal',
            'foto' => 'Foto',
            'fecha' => 'Fecha',
            'num_recibo' => 'Num Recibo',
            'monto_recibo' => 'Monto Recibo',
            'observaciones' => 'Observaciones',
            'secretario' => 'Secretario',
            'ini_secretario' => 'Ini Secretario',
            'usuario' => 'Usuario',
            'ini_usuario' => 'Ini Usuario',
            'tipo_carta_id' => 'Tipo Carta ID',
            'documento' => 'Documento',
            'firmado' => 'Firmado',
            'firma_digital' => 'Firma Digital',
            'folio' => 'Folio',
        ];
    }

    /**
     * Gets query for [[TipoCarta]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTipoCarta()
    {
        return $this->hasOne(TiposCartas::className(), ['id_tipo_carta' => 'tipo_carta_id']);
    }
}
