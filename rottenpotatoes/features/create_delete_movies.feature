Feature: add and delete movies from database
 
  As a user
  So that I can update the movie database
  I want to add or delete movies by using the appropriate buttons
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: add a new movie
  When I am on the home page
  And  I follow "Add new movie"
  And  I fill in "Title" with "Stuart Little"
  And  I select "G" from "movie_rating"
  And  I select "2013" from "movie_release_date_1i"
  And  I select "December" from "movie_release_date_2i"
  And  I select "5" from "movie_release_date_3i"
  And  I press "Save Changes"
  Then I should see "Stuart Little was successfully created."
  And  I should see "2013-12-05"
  
Scenario: delete a movie
  Given I am on the details page for "Blade Runner"
  When  I press "Delete"
  Then  I should see "Movie 'Blade Runner' deleted."
  And   I should not see "More about Blade Runner"
  And   I should not see "1982-06-25"  