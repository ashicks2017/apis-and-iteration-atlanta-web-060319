def welcome
  # puts out a welcome message here!
  puts "Hello Welcome to StarWars API!"
end

def get_character_from_user
  puts "Please enter a character name?"
  gets.chomp
  # use gets to capture the user's input. This method should return that input, downcased.
end
