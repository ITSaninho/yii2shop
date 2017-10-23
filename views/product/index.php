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
    
</div>
