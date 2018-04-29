<?php
namespace AppBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Debug\Debug;
use Symfony\Component\Debug\ErrorHandler;
use Symfony\Component\Debug\ExceptionHandler;
use Symfony\Component\Debug\DebugClassLoader;




class DashboardController extends Controller
{

  /**
  * @Route("/dashboard", name="dashboard_index")
  * @return Response
  */
  public function indexAction()
  {

    return $this->render('dashboard/index.html.twig');
  }
}
 ?>
