<?php

use yii\db\Migration;

class m170424_132634_create_news_table_user extends Migration
{
    public function safeUp()
    {
        $this->createTable('user', [
            'id' => $this->primaryKey(),
            'email' => $this->string(100)->notNull(),
            'password' => $this->text(),
            'auth_key' => $this->text(),
            'secret_key' => $this->text(),
            'nikname' => $this->string(255),
            'avatar' => $this->text(),
            'first_name' => $this->string(255),
            'second_name' => $this->string(255),
            'middle_name' => $this->string(255),
            'sex' => $this->string(30),
            'year' => $this->integer(4),
            'month' => $this->integer(2),
            'day' => $this->integer(2),
            'country' => $this->string(100),
            'region' => $this->string(100),
            'city' => $this->string(100),
            'street' => $this->string(255),
            'house' => $this->string(10),
            'data_registration' => $this->integer(20),
            'data_update' => $this->integer(20),
            'rols' => $this->integer(1)->defaultValue(1),
            'public' => $this->integer(1)->defaultValue(1),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('user');
    }
}
