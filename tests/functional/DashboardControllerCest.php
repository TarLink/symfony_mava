<?php


class DashboardControllerCest
{
    public function testShowAction(FunctionalTester $I)
    {
      $I->wantTo('to see inside the dashboard area');
      $I->amOnPage('/dashboard');
      $I->see('a placeholder for dashboard');
    }
}
