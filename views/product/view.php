<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\components\MenuWidget;
use yii\helpers\Url;


$this->title = 'My Yii Application';


?>
<div class="col-sm-3">
    <div class="left-sidebar">
        <ul class="catalog category-products">
            <h2>Категорії</h2>
            <?= MenuWidget::widget(['tpl' => 'menu'])?>
        </ul>
    </div>
</div>
<div class="col-sm-9">

    <?php if( !empty($products) ): ?>
        <div><!--features_items-->
            <h2 class="title text-center">Товари</h2>
            <?php foreach($products as $product): ?>
            <div>
                <?= Html::img("@web/images/products/{$product->id}", ['alt' => $product->name])?>
                <p><a href="<?= Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->name?></a></p>
                <?php echo "<p>Популярне</p>"; ?>
                <p><a href="<?= Url::to(['cart/add', 'id' => $product->id])?>" data-id="<?= $product->id?>" class="btn btn-default">в кошик</a></p>
                <p><a href="<?= Url::to(['product/add', 'id' => $product->id])?>" data-id="<?= $product->id?>" class="btn btn-default">купити</a></p>
                <p><?= $product->text ?></p>
                <?php if($product->hit == '1'){
                    echo "<p>Популярне</p>";
                }
                if($product->new == '1'){
                    echo "<p>Новинка</p>";
                }
                if($product->sale == '1'){
                    echo "<p>Розпродаж</p>";
                }
                ?>

                <?php
                foreach($product->productoptions as $product_options){
                    echo "<p>".$product_options['price']."</p>";
                    echo "<p>".$product_options['count']."</p>";
                    echo "<p>".$product_options['color']."</p>";
                    echo "<p>".$product_options['length']."</p>";
                    echo "<p>".$product_options['height']."</p>";
                    echo "<p>".$product_options['width']."</p>";
                    echo "<p>".$product_options['size_integer']."</p>";
                    echo "<p>".$product_options['size_string']."</p>";
                    echo "<p>".$product_options['weight']."</p>";
                    echo "<p>".$product_options['material']."</p>";

                }

                
                //echo "<p>".$product->productoptions->price."</p>";
                //echo "<p>".$product->productoptions->count."</p>";
                //echo "<p>".$product->productoptions->color."</p>";

                ?>


            </div>
            <?php endforeach;?>
            <div class="clearfix"></div>
        </div>
    <?php endif;?>

    <?php if( !empty($sales) ): ?>
        <div><!--features_items-->
            <h2 class="title text-center">Розпродаж</h2>
            <?php $i = 0; foreach($sales as $sale): ?>
                <div class='col-sm-4'>
                    <?= Html::img("@web/images/products/{$sale->id}", ['alt' => $sale->name])?>
                    <p><a href="<?= Url::to(['product/view', 'id' => $sale->id]) ?>"><?= $sale->name?></a></p>
                    <p><a href="<?= Url::to(['cart/add', 'id' => $sale->id])?>" data-id="<?= $sale->id?>" class="btn btn-default">в кошик</a></p>
                </div>
                <?php $i++?>
                <?php if($i % 3 == 0): ?>
                    <div class="clearfix"></div>
                <?php endif;?>
            <?php endforeach;?>
        </div>
    <?php endif;?>

    <?php if( !empty($hits) ): ?>
        <div><!--features_items-->
            <h2 class="title text-center">Популярне</h2>
            <?php $i = 0; foreach($hits as $hit): ?>
                <div class='col-sm-4'>
                    <?= Html::img("@web/images/products/{$product->id}", ['alt' => $product->name])?>
                    <p><a href="<?= Url::to(['product/view', 'id' => $hit->id]) ?>"><?= $hit->name?></a></p>
                    <p><a href="<?= Url::to(['cart/add', 'id' => $hit->id])?>" data-id="<?= $hit->id?>" class="btn btn-default">в кошик</a></p>
                </div>
                <?php $i++?>
                <?php if($i % 3 == 0): ?>
                    <div class="clearfix"></div>
                <?php endif;?>
            <?php endforeach;?>
        </div>
    <?php endif;?>
</div>
