<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class TaskType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder->add('status', ChoiseType::class, array(
      'choises' => array('new' => 'new',
      'in progress' => 'in_porgress',
      'completed' => 'completed'),
    ));
  }
}
?>
