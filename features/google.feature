Feature: google search
  In order to show relevant google search results
  As a user
  I want to perform a search

  @javascript @1st
  Scenario: Run a search for Behat
    Given I am on "https://www.google.com.ua/"
      And I am searching for "behat"
    Then I should see link with text "Behat Documentation — Behat 2.5.3 documentation" on the page
