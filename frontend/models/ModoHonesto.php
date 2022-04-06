<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "modo_honesto".
 *
 * @property int $id
 * @property string $nombre
 * @property string $apellido_paterno
 * @property string $apellido_materno
 * @property string $nom_c
 * @property string $nacionalidad
 * @property string $edad
 * @property string $originario
 * @property string $numero
 * @property string $calle
 * @property string $colonia
 * @property string $codigo_postal
 * @property string|null $foto
 * @property string $fecha
 * @property string|null $num_recibo
 * @property float $monto_recibo
 * @property string|null $observaciones
 * @property string $secretario
 * @property string|null $ini_secretario
 * @property int $id_usuario
 * @property string|null $ini_usuario
 * @property int $tipo_carta_id
 * @property string|null $documento
 * @property int|null $firmado
 * @property string|null $firma_digital
 * @property string|null $folio
 *
 * @property TiposCartas $tipoCarta
 * @property User $usuario
 */
class ModoHonesto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'modo_honesto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'apellido_paterno', 'apellido_materno', 'nom_c', 'nacionalidad', 'edad', 'originario', 'numero', 'calle', 'colonia', 'codigo_postal', 'fecha', 'monto_recibo', 'secretario', 'id_usuario', 'tipo_carta_id'], 'required'],
            [['fecha'], 'safe'],
            [['monto_recibo'], 'number'],
            [['id_usuario', 'tipo_carta_id', 'firmado'], 'integer'],
            [['documento'], 'string'],
            [['nombre', 'apellido_paterno', 'apellido_materno', 'observaciones'], 'string', 'max' => 128],
            [['nom_c'], 'string', 'max' => 50],
            [['nacionalidad'], 'string', 'max' => 32],
            [['edad', 'originario', 'calle', 'colonia', 'secretario'], 'string', 'max' => 64],
            [['numero', 'codigo_postal', 'num_recibo', 'ini_secretario', 'ini_usuario'], 'string', 'max' => 10],
            [['foto'], 'string', 'max' => 2],
            [['firma_digital', 'folio'], 'string', 'max' => 255],
            [['tipo_carta_id'], 'exist', 'skipOnError' => true, 'targetClass' => TiposCartas::className(), 'targetAttribute' => ['tipo_carta_id' => 'id_tipo_carta']],
            [['id_usuario'], 'exist', 'skipOnError' => true, 'targetClass' => \Da\User\Model\User::className(), 'targetAttribute' => ['id_usuario' => 'id']],
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
            'id_usuario' => 'Id Usuario',
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

    /**
     * Gets query for [[Usuario]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuario()
    {
        return $this->hasOne(\Da\User\Model\User::className(), ['id' => 'id_usuario']);
    }
}
