<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "direcciones".
 *
 * @property int $id
 * @property string|null $nombre
 * @property int|null $activo
 * @property int|null $idsecretaria
 *
 * @property Secretarias $idsecretaria0
 */
class Direcciones extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'direcciones';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['activo', 'idsecretaria'], 'required'],
            [['activo', 'idsecretaria'], 'integer'],
            [['nombre'], 'string', 'max' => 255],
            [['idsecretaria'], 'exist', 'skipOnError' => true, 'targetClass' => Secretarias::className(), 'targetAttribute' => ['idsecretaria' => 'id']],
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
            'activo' => 'Activo',
            'idsecretaria' => 'Idsecretaria',
        ];
    }

    /**
     * Gets query for [[Idsecretaria0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdsecretaria0()
    {
        return $this->hasOne(Secretarias::className(), ['id' => 'idsecretaria']);
    }
}
