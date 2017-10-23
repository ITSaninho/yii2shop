<?php

use yii\db\Migration;

class m170424_132936_create_news_table_image extends Migration
{
    public function safeUp()
    {
        $this->createTable('images', [
            'id' => $this->primaryKey(),
            'product_id' => $this->integer(11),
            'is_main' => $this->integer(1),
            'images' => $this->string(255),
            'file_puth' => $this->text(),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('images');
    }
}
