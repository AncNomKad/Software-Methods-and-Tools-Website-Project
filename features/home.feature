Feature: Display the home page

  As an avid Freespace fan
  So that I can access the website's content
  I want to be able to go to the database and signup or sign in as a member

  Background: home page exists

  	Given I am on the home page

  	Then I should see "Sign up now!"

  	And I should see "Sign in"

  	And I should see "Proceed to Showroom!"

    And I should see "About"

    And I should see "Info"

    And I should see "News"

    And I should see "Help"

  Scenario: I sign up to have a user profile
  	
  	Given I am on the home page

    When I go to signup

    Then I should see "Name"

    And I should see "Email"

    And I should see "Password"


  Scenario: I sign in to access my user profile

  	Given I am on the home page

    When I follow "Sign in"

  	Then I should see "Email"

    And I should see "Password"

    And I should see "Continue"

    And I should see "Back"


  Scenario: I access the Showroom

    Given I am on the home page

  	When I go to showroom

  	Then I should see "Name"

    And I should see "Class"

    And I should see "Manufacturer"