Feature: display name, rank, date registered, and favorites table of user

As an avid lover for Freespace
So that I can have a profile page
I want to see my name, rank , date registered, favorites table

Background: User has set up name, rank, date registered, and favorites table

	Given I am on the user profile page

	Then I should see "Name"

	And I should see "Rank"

	And I should see "Date Registered"

	And I should see "Favorites table"