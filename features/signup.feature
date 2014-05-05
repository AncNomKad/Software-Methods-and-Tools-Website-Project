Feature: sign up with name, email, and password

As an avid lover for Freespace
So that I can have a profile page
I want to create a user profile

Background: User has set up name, rank, date registered, and favorites table

	Given I am on the sign up page

	Then I should see "Name"

	And I should see "Email"

	And I should see "Password"

	And I should see "Create User"

	And I should see "Back"