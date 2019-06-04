require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  #make the web request
  my_array = []
  url = 'http://www.swapi.co/api/people/'
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)

  response_hash["results"].each do |character_name|
      films_array = character_name["films"]
        films_array.each do |u|
          var = RestClient.get(u)
          var_hash = JSON.parse(var)
          my_array << var_hash
        end
      end
      my_array
      binding.pry
    end
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.


def print_movies(my_array)
  # some iteration magic and puts out the movies in a nice list
   #  films.each do |title|
   #    response_title = RestClient.get("#{title}")
   #    title_hash = JSON.parse(response_title)
   #    puts title_hash = ["title"]
   # end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
