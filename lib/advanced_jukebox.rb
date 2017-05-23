#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

require 'pry'

my_songs = {
"Go Go GO" => 'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\01.mp3',
"LiberTeens" => 'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\02.mp3',
"Hamburg" =>  'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\03.mp3',
"Guiding Light" => 'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\04.mp3',
"Wolf" => 'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\05.mp3',
"Blue" => 'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\06.mp3',
"Graduation Failed" => 'C:\Users\William Dana\.atom\.learn-ide\home\williambdana-58256\code\labs\jukebox-cli-web-060517\audio\Emerald-Park\07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  count = 0
  my_songs.each do |k, v|
    count += 1
    puts "#{count}. #{k}"
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
  if my_songs.include?(user_input)
    value = my_songs.values_at(user_input).join("")
    system(start value)
  else
    puts "Invalid input!"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  loop do
    user_input = gets.chomp
    case user_input
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end
