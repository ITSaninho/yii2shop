<?php


namespace app\models;
use yii\db\ActiveRecord;


class Productoptions extends ActiveRecord{


    public static function tableName(){
        return 'productoptions';
    }


    public function getProduct(){
        return $this->hasMany(Product::className(), ['id' => 'product_id']);
    }

}