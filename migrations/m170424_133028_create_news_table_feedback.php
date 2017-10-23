<?php

use yii\db\Migration;

class m170424_133028_create_news_table_feedback extends Migration
{
    public function safeUp()
    {
        $this->createTable('feedback', [
            'id' => $this->primaryKey(),
            'email' => $this->string(100)->notNull(),
            'text' => $this->text(),
            'data' => $this->integer(20),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('feedback');
    }
}
