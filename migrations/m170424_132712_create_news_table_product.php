    <?php

use yii\db\Migration;

class m170424_132712_create_news_table_product extends Migration
{
    public function safeUp()
    {
        $this->createTable('product', [
            'id' => $this->primaryKey(),
            'category_id' => $this->integer(5),
            'name' => $this->text(),
            'text' => $this->text(),
            'hit' => $this->string(100)->defaultValue(0),
            'new' => $this->string(100)->defaultValue(1),
            'sale' => $this->string(100)->defaultValue(0),
            'keywords' => $this->text(),
            'description' => $this->text(),
            'data_create' => $this->integer(20),
            'data_update' => $this->integer(20),
            'public' => $this->integer(1)->defaultValue(1),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('product');
    }
}
