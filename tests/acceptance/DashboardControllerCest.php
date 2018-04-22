<?php


class DashboardControllerCest
{
    public function testShowAction(AcceptanceTester $I)
    {
      $I->wantTo('to see inside the dashboard area');
      $I->amOnPage('/dashboard');
      $I->see('a placeholder for dashboard');
      $I->wait(3);
    }

}
