<?php

require_once(LIB_DIR . '/Template.class.php');

class TPL_Stream_control extends Template
{
    private $tplFilename = 'streamControl.tpl';
    private $outputBuffer;

    public function __construct(stdClass $langObject)
    {
        parent::__construct();
        $this->assign('language', $langObject);
        $this->initTemplate();
    }

    private function initTemplate()
    {
        $this->outputBuffer = $this->fetch($this->tplFilename);
    }

    public function returnTemplate() {
        return $this->outputBuffer;
    }

}
