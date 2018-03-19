# Cucumber steps are derived from provided "search_for_movies_by_directory.feature"
# General ideas taken from tutorial for homework we skipped (Cucumber)

# Background: "movies in database"
Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create(movie)
  end
end

# "Scenario: add director to existing movie"
Then (/^the director of "([^"]*)" should be "([^"]*)"$/) do |title, director|
  movie = Movie.find_by_title(title)
  expect(movie.director).to eq director
end

# Scenario: find movie with same director"