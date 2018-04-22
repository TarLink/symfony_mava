<?php
namespace AppBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

/**
*@Route("/dashboard/workspace")
*/
class WorkspaceController extends Controller
{
  /**
  * @Route("/{name}", name="workspace_show")
  * @param $name
  * @return Response
  */
  public function showAction($name)
  {
    // find the workspace id from the given name
    $repo = $this->getDoctrine()->getRepository('AppBundle:Workspace');
    $workspace = $repo->findOneBy(array('name' => $name));
    $workspaceId = $workspace->getId();

    //find all projects which have the given workspace //
    $repo = $this->getDoctrine()->getRepository('AppBundle:Project');
    $projects = $repo->findBy(array('workspace' => $workspaceId));

    if ($projects == null){
      throw $this->createNotFoundException('Not found!');
    }
    else {
      return $this->render('workspace/show.html.twig', array('projects' => $projects));
    }

  }
}
 ?>
