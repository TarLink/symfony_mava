<?php

class DashboardControllerTest extends \Codeception\Test\Unit
{
    /**
     * @var \UnitTester
     */
    protected $tester;

    public function testShowAction()
    {
      $this->tester->amOnRoute('dashboard_index');
      $this->tester->seeResponseContains(
        'This is a placeholder for dashboard area.'
      );
    }
}
