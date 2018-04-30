<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;
use Behat\Behat\Context\SnippetAcceptingContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends MinkContext implements SnippetAcceptingContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }


    /**
     * @Given I log in as Jack
     */
    public function iLogInAsJack()
    {
        $this->visit('/login');
        $this->fillField('username', 'Jack');
        $this->fillField('password', 'jackpass');
        $this->pressButton('_submit');
    }

    /**
     * @Given I visit :arg1
     */
    public function iVisit($arg1)
    {
        $this->visit($arg1);
    }
}
