<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\BuenaConducta;

/**
 * BuenaConductaBuscar represents the model behind the search form of `frontend\models\BuenaConducta`.
 */
class BuenaConductaBuscar extends BuenaConducta
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tipo_carta_id', 'firmado'], 'integer'],
            [['nombres', 'apellido_paterno', 'apellido_materno', 'nom_c', 'nacionalidad', 'edad', 'originario', 'numero', 'calle', 'colonia', 'codigo_postal', 'foto', 'fecha', 'num_recibo', 'observaciones', 'secretario', 'ini_secretario', 'usuario', 'ini_usuario', 'documento', 'firma_digital', 'folio'], 'safe'],
            [['monto_recibo'], 'number'],
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
        $query = BuenaConducta::find();

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
            'fecha' => $this->fecha,
            'monto_recibo' => $this->monto_recibo,
            'tipo_carta_id' => $this->tipo_carta_id,
            'firmado' => $this->firmado,
        ]);

        $query->andFilterWhere(['like', 'nombres', $this->nombres])
            ->andFilterWhere(['like', 'apellido_paterno', $this->apellido_paterno])
            ->andFilterWhere(['like', 'apellido_materno', $this->apellido_materno])
            ->andFilterWhere(['like', 'nom_c', $this->nom_c])
            ->andFilterWhere(['like', 'nacionalidad', $this->nacionalidad])
            ->andFilterWhere(['like', 'edad', $this->edad])
            ->andFilterWhere(['like', 'originario', $this->originario])
            ->andFilterWhere(['like', 'numero', $this->numero])
            ->andFilterWhere(['like', 'calle', $this->calle])
            ->andFilterWhere(['like', 'colonia', $this->colonia])
            ->andFilterWhere(['like', 'codigo_postal', $this->codigo_postal])
            ->andFilterWhere(['like', 'foto', $this->foto])
            ->andFilterWhere(['like', 'num_recibo', $this->num_recibo])
            ->andFilterWhere(['like', 'observaciones', $this->observaciones])
            ->andFilterWhere(['like', 'secretario', $this->secretario])
            ->andFilterWhere(['like', 'ini_secretario', $this->ini_secretario])
            ->andFilterWhere(['like', 'usuario', $this->usuario])
            ->andFilterWhere(['like', 'ini_usuario', $this->ini_usuario])
            ->andFilterWhere(['like', 'documento', $this->documento])
            ->andFilterWhere(['like', 'firma_digital', $this->firma_digital])
            ->andFilterWhere(['like', 'folio', $this->folio]);

        return $dataProvider;
    }
}
