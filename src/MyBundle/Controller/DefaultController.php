<?php

namespace MyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/my", name="mypage")
     */
    public function indexAction()
    {
        return $this->render('@My/Default/index.html.twig');
    }
}
