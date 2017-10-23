<?php

use yii\db\Migration;

class m170424_132728_create_news_table_category extends Migration
{
    public function safeUp()
    {
        $this->createTable('category', [
            'id' => $this->primaryKey(),
            'parent_id' => $this->integer(11),
            'name' => $this->string(100),
            'keywords' => $this->text(),
            'description' => $this->text(),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('category');
    }
}
