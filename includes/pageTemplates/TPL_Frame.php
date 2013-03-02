<?php

require_once(LIB_DIR . '/Template.class.php');
require_once(P_TPL_DIR . '/TPL_Main.php');

class TPL_Frame extends Template
{
    private $outputBuffer;

    private $mainObject;

    public function __construct(stdClass $langObject)
    {
        parent::__construct();
        $this->assign('language', $langObject);
        $this->mainObject = new TPL_Main($langObject);
        $this->initFrame();

    }

    private function initFrame()
    {
       // $this->assign('bla', $this->mainObject->returnTemplate());
        $this->outputBuffer = $this->fetch(parent::getFrameFilename());
    }

    public function returnTemplate()
    {
        return $this->outputBuffer;
    }

}