<?php

use yii\db\Migration;

class m170424_132747_create_news_table_comment extends Migration
{
    public function safeUp()
    {
        $this->createTable('comment', [
            'id' => $this->primaryKey(),
            'id_user' => $this->integer(11),
            'id_product' => $this->integer(11),
            'text' => $this->text(),
            'likes' => $this->integer(11),
            'deslikes' => $this->integer(11),
            'data' => $this->integer(20),
            'public' => $this->string(100),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('comment');
    }
}
