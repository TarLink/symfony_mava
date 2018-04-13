<?php


class WorkspaceControllerAcceptCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    // tests
    public function tryToTest(AcceptanceTester $I)
    {
    }

    public function testShowAction(AcceptanceTester $I)
    {
      $I->wantTo('too see inside the "writing" workspace');
      $I->amOnPage('/workspace/writing');
      $I->see('Symfony book');
      $I->wait(3);
    }
}
