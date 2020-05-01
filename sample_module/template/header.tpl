<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>モジュールテンプレート</title>
  <link rel="stylesheet" type="text/css" href="media/style/RevoStyle/style.css" />
  <script type="text/javascript" src="media/script/tabpane.js"></script>
  <script type="text/javascript" src="media/script/jquery/jquery.min.js"></script>
  <!-- <script type="text/javascript" src="media/script/jquery/jquery.alerts.js"></script> -->
  <script type="text/javascript">
    var $j = jQuery.noConflict();
    $j(function () {
      $j("#execbtn").click(function () {
        alert('実行ボタンが押されました');
        return false;
      });
    });
  </script>
  <style type="text/css">
    h3 {
      border-left: 3px green solid;
      padding-left: 5px;
    }

    .btn1 {
      margin-top: 1.0em;
    }

    #overlayview {
      display: none;
      z-index: 9999;
      display: bolock;
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(175, 175, 175, 0.5);
      font-weight: bold;
      font-size: 24px;
      text-align: center;
      padding-top: 2.0em;
      user-select: none;
      -moz-user-select: none;
      /* Firefox */
      -webkit-user-select: none;
      /* Safari、Chrome */
      -ms-user-select: none;
      /* IE10 */
    }

    /* jAlert, jConfirm用 */
    /* #popup_container {
      min-width: 300px;
      max-width: 520px;
      border: solid 5px #999;
      background: #fff;
      color: #000;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      border-radius: 5px;
    }

    #popup_title {
      margin: 0;
      padding: 0;
      border: solid 1px #fff;
      border-bottom: solid 1px #999;
      background: #ccc;
      color: #000;
      font-size: 14px;
      font-weight: bold;
      text-align: center;
      line-height: 1.75em;
      cursor: default;
    }

    #popup_content {
      margin: 0;
      padding: 1em 1em;
      font-size: 14px;
    }

    #popup_message {
      padding-left: 15px;
      padding-right: 10px;
      max-height: 420px;
      overflow-y: auto;
    }

    #popup_panel {
      text-align: center;
      margin: 1em 0 0 1em;
    } */
  </style>
</head>

<body>