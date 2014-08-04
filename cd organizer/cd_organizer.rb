require './lib/artist'
require './lib/album'

def main_menu
  puts "\n\n"
  puts "Welcome to Anna's magical mystery CD Organizer! IT'S 1993 YOU GUYS!"
  sleep 1
  puts "\n\n"
  puts "Enter 'a' to add an artist, 's' to use search, or 'x' to exit."
  user_choice = gets.chomp
  if user_choice == 'a'
    add_artist
    puts "artist add"
    list_artist

  elsif user_choice == 's'
    search_cd
  elsif user_choice == 'x'
    exit
    puts "you're leaving me for an mp3 player aren't you?!"
  else
    puts "that's not a valid option."
    main_menu
  end
end

  def add_artist
    puts "Enter the name of the Artist:"
    artist_name = gets.chomp
    Artist.new(artist_name)
  end

  def list_artist
    puts "Here are all of your current artists"
    Artist.list_organizer.each_with_index do |artist, index|
      puts (index + 1).to_s + " " + artist.name
    end
  end
main_menu
