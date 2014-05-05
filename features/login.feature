Feature: login with username and password

  As an avid Freespace fan
  So that I can access my User profile
  I want to be able to login

  Background:Login page exists

    Given I am on the sign in page

    Then I should see "Email"

    And I should see "Password"

    And I should see "Continue"

    And I should see "Back"

  Scenario: I login

 	  When I fill in "Email" with "kadcooper@gmail.com"

    And I fill in "Password" with "noob"

 	  Then I should press "Continue"

 	  And I should see user profile page