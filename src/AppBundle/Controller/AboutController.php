<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\User;



class AboutController extends Controller {
  public function detailsAction($name){
    $user=$this->getDoctrine()->getRepository('AppBundle:User')
        ->findOneBy(array('name'=>$name));
    return $this->render('AppBundle:About:more.html.twig', array('user' => $user));
  }
}

 ?>
