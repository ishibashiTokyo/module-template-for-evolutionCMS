<?php
if ( !isset($modx) ) die('管理画面にログインしてください。');

require_once(MODX_BASE_PATH.'assets/modules/sample_mnodule/SAMPLE.class.inc.php');
$mt = new SAMPLE;

switch ( $mt->isMode() ) {
    case 'main':
        # code...
        break;
    case 'result':
        # code...
        break;
    default:
        # code...
        break;
}

// テンプレートファイルの取得
$html_head = $mt->getTemplate('header.tpl');
$html_foot = $mt->getTemplate('footer.tpl');
$html_body = $mt->getTemplate('main.tpl');

// プレースホルダ―への登録
$modx->setPlaceholder("resourceFileError",$msg);

// テンプレートにプレースホルダ―の内容を挿入
$html_body = $modx->parseText( $html_body, $modx->placeholders );

// 出力
echo $html_head . PHP_EOL . $html_body . PHP_EOL . $html_foot;
