<?php

use yii\db\Migration;

class m170424_132814_create_news_table_order extends Migration
{
    public function safeUp()
    {
        $this->createTable('order', [
            'id' => $this->primaryKey(),
            'user_id' => $this->integer(11),
            'data_created' => $this->integer(20),
            'data_updated' => $this->integer(20),
            'data_over' => $this->integer(20),
            'status' => $this->string(50),
            'sum' => $this->integer(20),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('order');
    }
}
