<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "secretarias".
 *
 * @property int $id
 * @property string|null $nombre
 * @property int|null $activo
 *
 * @property Direcciones[] $direcciones
 */
class Secretarias extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'secretarias';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['activo'], 'integer'],
            [['nombre'], 'string', 'max' => 255],
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
        ];
    }

    /**
     * Gets query for [[Direcciones]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDirecciones()
    {
        return $this->hasMany(Direcciones::className(), ['idsecretaria' => 'id']);
    }
}
