<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "tipos_cartas".
 *
 * @property int $id_tipo_carta
 * @property string|null $nombre
 * @property int|null $activo
 *
 * @property ModoHonesto[] $modoHonestos
 */
class TiposCartas extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tipos_cartas';
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
            'id_tipo_carta' => 'Id Tipo Carta',
            'nombre' => 'Nombre',
            'activo' => 'Activo',
        ];
    }

    /**
     * Gets query for [[ModoHonestos]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getModoHonestos()
    {
        return $this->hasMany(ModoHonesto::className(), ['tipo_carta_id' => 'id_tipo_carta']);
    }
}
