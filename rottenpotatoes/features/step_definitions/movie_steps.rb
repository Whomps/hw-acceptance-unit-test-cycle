# Cucumber steps are derived from provided "search_for_movies_by_directory.feature"
# General ideas taken from tutorial for homework we skipped (Cucumber)

# Step to add movies to database
Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create(movie)
  end
end