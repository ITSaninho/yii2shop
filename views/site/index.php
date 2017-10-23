<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\LinkPager;
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
            <?php $i = 0; foreach($products as $product): ?>
            <div class='col-sm-4'>
                <?= Html::img("@web/images/products/{$product->id}", ['alt' => $product->name])?>
                <p><a href="<?= Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->name?></a></p>
                <p><a href="<?= Url::to(['cart/add', 'id' => $product->id])?>" data-id="<?= $product->id?>" class="btn btn-default">в кошик</a></p>

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
            </div>
            <?php $i++?>
                <?php if($i % 3 == 0): ?>
                    <div class="clearfix"></div>
                <?php endif;?>
            <?php endforeach;?>
            <div class="clearfix"></div>
        </div>
        <?php
            echo \yii\widgets\LinkPager::widget([
                'pagination' => $pages,
            ]);
        ?>
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
