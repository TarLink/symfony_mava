<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Sonata\UserBundle\Entity\BaseGroup;

/**
 * Group
 * @ORM\Table(name="mava_group")
 * @ORM\Entity
 */
class Group extends BaseGroup
{
  /**
   * @var integer
   * @ORM\Column(type="integer")
   * @ORM\Id
   * @ORM\GeneratedValue(strategy="AUTO")
   */
    protected $id;

    public function getId()
    {
      return $this->id;
    }

}
