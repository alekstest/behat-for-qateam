Feature: Events 
	In order to see University's events  
	As a site user 
	I need to see the events list  

  @javascript
  Scenario: List available Events in Carousel 
  	Given I am an anonymous user
  	And I am on "/home"       
  	Then I should see "Speakers from Practice: Business Law" 

  @javascript
  Scenario: Switching List of available Events in Carousel   
  	Given I am an anonymous user
  	And I am on "/home" 
  	When I click "swiper_next_slide"   
  	Then I should see  "events"

  @javascript
  Scenario: List Available Events Page    
  	Given I am an anonymous user
  	And I am on "/home"  
  	When I click "View All Events" 
  	Then I should see "Faculty Workshop: Professor Michael Waxman"  

  @javascript
  Scenario: List Available Events Calendar 
  	Given I am an anonymous user
  	And I am on "/home"
  	When I click "Event Calendar" 
  	Then I should see 6 event items

  @javascript
  Scenario: Event Detail Page
  	Given I am an anonymous user
  	And I am on "/eventlisting"
  	When I click random event title 
  	Then I should see 6 event items