# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)

# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

#Define People

christian_bale = Person.new
christian_bale.name = "Christian Bale"
christian_bale.save

michael_caine = Person.new
michael_caine.name = "Michael Caine"
michael_caine.save 

liam_neeson = Person.new
liam_neeson.name = "Liam Neeson"
liam_neeson.save

katie_holmes = Person.new
katie_holmes.name = "Katie Holmes"
katie_holmes.save

gary_oldman = Person.new
gary_oldman.name = "Gary Oldman"
gary_oldman.save

heath_ledger = Person.new
heath_ledger.name = "Heath Ledger"
heath_ledger.save

aaron_eckhart = Person.new
aaron_eckhart.name = "Aaron Eckhart"
aaron_eckhart.save

maggie_gyllenhaal = Person.new
maggie_gyllenhaal.name = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

tom_hardy = Person.new
tom_hardy.name = "Tom Hardy"
tom_hardy.save

joseph_gordon_levitt = Person.new
joseph_gordon_levitt.name = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

anne_hathaway = Person.new
anne_hathaway.name = "Anne Hathaway"
anne_hathaway.save

christopher_nolan = Person.new
christopher_nolan.name = "Christopher Nolan"
christopher_nolan.save

#Define Movies 

batman1 = Movie.new
batman1.title = "Batman Begins"
batman1.year_released = "2005"
batman1.rated = "PG-13"
batman1.person_id = christopher_nolan.id
batman1.save  

batman2 = Movie.new
batman2.title = "The Dark Knight"
batman2.year_released = "2008"
batman2.rated = "PG-13"
batman2.person_id = christopher_nolan.id
batman2.save

batman3 = Movie.new
batman3.title = "The Dark Knight Rises"
batman3.year_released = "2012"
batman3.rated = "PG-13"
batman3.person_id = christopher_nolan.id
batman3.save

#person_id = christian_bale.id  


#Define Roles
bruce_wayne = Role.new
bruce_wayne.character_name = "Bruce Wayne"
bruce_wayne.movie_id = batman1.id
bruce_wayne.person_id = christian_bale.id
bruce_wayne.save

alfred = Role.new
alfred.character_name = "Alfred"
alfred.movie_id = batman1.id
alfred.person_id = michael_caine.id
alfred.save

ras_al_ghul = Role.new
ras_al_ghul.character_name = "Ra's Al Ghul"
ras_al_ghul.movie_id = batman1.id
ras_al_ghul.person_id = liam_neeson.id
ras_al_ghul.save

rachel_dawes = Role.new
rachel_dawes.character_name = "Rachel Dawes"
rachel_dawes.movie_id = batman1.id
rachel_dawes.person_id = katie_holmes.id
rachel_dawes.save

commissioner_gordon = Role.new
commissioner_gordon.character_name = "Commissioner Gordon"
commissioner_gordon.movie_id = batman1.id
commissioner_gordon.person_id = gary_oldman.id
commissioner_gordon.save

bruce_wayne2 = Role.new
bruce_wayne2.character_name = "Bruce Wayne"
bruce_wayne2.movie_id = batman2.id
bruce_wayne2.person_id = christian_bale.id
bruce_wayne2.save

joker = Role.new
joker.character_name = "Joker"
joker.movie_id = batman2.id
joker.person_id = heath_ledger.id
joker.save

harvey_dent = Role.new
harvey_dent.character_name = "Harvey Dent"
harvey_dent.movie_id = batman2.id
harvey_dent.person_id = aaron_eckhart.id
harvey_dent.save

alfred2 = Role.new
alfred2.character_name = "Alfred"
alfred2.movie_id = batman2.id
alfred2.person_id = michael_caine.id
alfred2.save

rachel_dawes2 = Role.new
rachel_dawes2.character_name = "Rachel Dawes"
rachel_dawes2.movie_id = batman2.id
rachel_dawes2.person_id = maggie_gyllenhaal.id
rachel_dawes2.save

bruce_wayne3 = Role.new
bruce_wayne3.character_name = "Bruce Wayne"
bruce_wayne3.movie_id = batman3.id
bruce_wayne3.person_id = christian_bale.id
bruce_wayne3.save

commissioner_gordon2 = Role.new
commissioner_gordon2.character_name = "Commissioner Gordon"
commissioner_gordon2.movie_id = batman3.id
commissioner_gordon2.person_id = gary_oldman.id
commissioner_gordon2.save

bane = Role.new
bane.character_name = "Bane"
bane.movie_id = batman3.id
bane.person_id = tom_hardy.id
bane.save

john_blake = Role.new
john_blake.character_name = "John Blake"
john_blake.movie_id = batman3.id
john_blake.person_id = joseph_gordon_levitt.id
john_blake.save

selina_kyle = Role.new
selina_kyle.character_name = "Selina Kyle"
selina_kyle.movie_id = batman3.id
selina_kyle.person_id = anne_hathaway.id
selina_kyle.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

director = Person.where({name: "Christopher Nolan"})[0]

movies = Movie.all
for movie in movies
    puts "#{movie.title} #{movie.year_released} #{movie.rated}" People.where({id: movie.people_id})[0]
end 

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

roles = Role.all

for role in roles 
   puts "#{role.character_name}"


end 