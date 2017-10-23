<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\Category;
use app\models\Product;
use yii\helpers\Html;
use yii\helpers\Url;
use app\models\Productoptions;

class ProductController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        
        return $this->render('index');
    }

    public function actionView($id)
    {

        $da = Productoptions::find()->all();
       
        $products = Product::find()->where(['public' => '1'])->andWhere(['id' => $id])->all();

        $sales = Product::find()->where(['public' => '1'])->andWhere(['sale' => '1'])->orderBy(['id' => SORT_DESC])->limit(3)->all();
        $hits = Product::find()->where(['public' => '1'])->andWhere(['hit' => '1'])->orderBy(['view' => SORT_DESC])->limit(3)->all();

        return $this->render('view', compact('products', 'sales', 'hits', 'da'));
    }


}
