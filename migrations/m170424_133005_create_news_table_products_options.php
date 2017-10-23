<?php

use yii\db\Migration;

class m170424_133005_create_news_table_products_options extends Migration
{
    public function safeUp()
    {
        $this->createTable('product_options', [
            'id' => $this->primaryKey(),
            'product_id' => $this->integer(11),
            'price' => $this->double(20),
            'length' => $this->integer(11),
            'height' => $this->integer(11),
            'width' => $this->integer(11),
            'size_integer' => $this->integer(11),
            'size_string' => $this->varchar(11),
            'weight' => $this->integer(11),
            'color' => $this->string(50),
            'material' => $this->string(50),
            'count' => $this->integer(11),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('product_options');
    }
}
