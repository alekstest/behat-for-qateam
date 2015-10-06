Feature: Events 
  In order to see University's events  
  As a site user 
  I need to have an events list  

  @javascript
  Scenario: List of available Events in Carousel 
    Given I am an anonymous user
    And I am on "/home"       
    Then I should see "Speakers from Practice: Business Law" title 

  @javascript
  Scenario: A Possibility to Switch the List of Available Events in Carousel   
    Given I am an anonymous user
    And I am on "/home" 
    When I click "Next Slide" button   
    Then I should see 3 new "events"

  @javascript
  Scenario: Page with the List of Available Events    
    Given I am an anonymous user
    And I am on "/home"  
    When I click "View All Events" 
    Then I should see "Faculty Workshop: Professor Michael Waxman"  

  @javascript
  Scenario: Calendar with the List of Available Events 
    Given I am an anonymous user
    And I am on "/home"
    When I click "Event Calendar"
    And I click "October" 
    Then I should see an event with the "Test Event" title

  @javascript
  Scenario: Page which Contains Event's Details
    Given I am an anonymous user
    And I am on "/eventlisting"
    When I click a title of a first event in the list 
    Then I should be on the "Event's Details" page
