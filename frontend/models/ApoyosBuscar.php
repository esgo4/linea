<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Apoyos;

/**
 * ApoyosBuscar represents the model behind the search form of `app\models\Apoyos`.
 */
class ApoyosBuscar extends Apoyos
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tipo_apoyo', 'id_usuario', 'id_tramite'], 'integer'],
            [['fecha', 'folio', 'representante', 'descripcion', 'estatus', 'respuesta'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Apoyos::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'tipo_apoyo' => $this->tipo_apoyo,
            'id_usuario' => $this->id_usuario,
            'id_tramite' => $this->id_tramite,
        ]);

        $query->andFilterWhere(['like', 'fecha', $this->fecha])
            ->andFilterWhere(['like', 'folio', $this->folio])
            ->andFilterWhere(['like', 'representante', $this->representante])
            ->andFilterWhere(['like', 'descripcion', $this->descripcion])
            ->andFilterWhere(['like', 'estatus', $this->estatus])
            ->andFilterWhere(['like', 'respuesta', $this->respuesta]);

        return $dataProvider;
    }
}
