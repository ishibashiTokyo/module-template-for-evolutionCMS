<?php
class SAMPLE {
    private $msg = array();
    private $post_data = array();

    function __construct(){
        $this->msg['ErrorMessage'] = '';
        $this->initParam();
    }

    public function isMode() {
        return 'main';
    }

    private function initParam() {
        // POSTなどの値をチェック
        if (isset($_POST)) {
            $this->post_data = $POST;
        }
    }

    public function getTemplate( $filename = '' ) {
        if ( !file_exists( dirname(__FILE__) . '/template/' . $filename) ) {
            $this->msg['ErrorMessage'] = "Error. getTemplateFile()\n";
            $this->Error();
        }
        return file_get_contents( dirname(__FILE__) . '/template/' . $filename );
    }

    private function Error() {
    }
}