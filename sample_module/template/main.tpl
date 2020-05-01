<h1>モジュールテンプレート</h1>
<div id="actions">
  <ul class="actionButtons">
    <li id="Button1">
      <a href="#" id="execbtn">実行</a>
    </li>
    <li>
      <a href="#" onclick="document.location.href='index.php?a=2';">閉じる</a>
    </li>
  </ul>
</div>

<div class="section">
  <div class="sectionHeader">名称１</div>
  <div class="sectionBody">
    <h3>見出し3</h3>
    <div>
      <p>説明・概要</p>
    </div>
    <div class="tab-pane" id="pane1">
      <script type="text/javascript"> pane1 = new WebFXTabPane(document.getElementById("pane1"), true); </script>
      <div class="tab-page" id="tab1">
        <h2 class="tab">パネル1</h2>
        <script type="text/javascript">pane1.addTabPage(document.getElementById("tab1"));</script>
        <div class="sectionBody" style="margin:0 0 25px;">
          <h3>見出し3</h3>
          <form action="" method="POST" onsubmit="return fliecheck(this);" enctype="multipart/form-data"
            style="width:350px; float:left;">
            <input type="file" name="csvfile" size="50" value="" />
            <input type="submit" name="import" value="Import" />
            <input type="hidden" name="mode" value="import" />
          </form>
          <form action="" method="POST" style="width:100px; float:left;">
            <input type="submit" name="export" value="Export" />
            <input type="hidden" name="mode" value="export" />
          </form>
          <br clear="both">
          [+resourceFileError+]
        </div>

        <h4>見出し4</h4>
        [+readResourceError+]
        [+readResource+]
      </div>
      <div class="tab-page" id="tab2">
        <h2 class="tab">パネル2</h2>
        <script type="text/javascript">pane1.addTabPage(document.getElementById("tab2"));</script>
        <h4>見出し4</h4>
        <p>パネル2の内容</p>
        <p>submitするフォームを指定して個別実行できるようにしている。</p>
        <form action="" method="POST" name="settingform">
          <textarea name="exclude_paths">[+readExFile+]</textarea>
          <input type="hidden" name="mode" value="setting" />
          <ul class="actionButtons">
            <li id="Button1" class="btn1">
              <a href="#" onclick="document.settingform.submit(); return false;">更新</a>
            </li>
          </ul>
        </form>
      </div>
      <div class="tab-page" id="tab3">
        <h2 class="tab">パネル3</h2>
        <script type="text/javascript">pane1.addTabPage(document.getElementById("tab3"));</script>
        <h4>見出し4</h4>
        <p>パネル3の内容</p>
      </div>
    </div>
  </div>
</div>

<div id="overlayview">
  <div class="loading_msg">処理中です</div>
</div>