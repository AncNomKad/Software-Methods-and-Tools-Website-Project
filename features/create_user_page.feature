Feature: create user profile

  As an avid Freespace fan
  So that I can keep a record of my Favorites table
  I want to create a user profile

  Background: Create User Page exists

  	Given I am on the Create User Page

  	Then I should see Date Registered

  	And I should see Email

  	And I should see Password

  	And I should see Continue

  Scenario: User puts in required information

  	When I follow Date Registered

  	Then I should type in the Date

  	When I follow Email

  	Then I should type in the Email

  	When I follow Password

  	Then I should type in the Password



