require 'numbers_and_words'
require 'colorize'

def welcome
  puts "Hello! What is your name?".colorize(:light_blue)
  print "> "
  name = gets.strip
  if name != ""
    puts "\nWelcome to Magic Four #{name}!\n".colorize(:green); sleep 1.5
  else
    puts "\nCome on! Put your name!\n".colorize(:red)
    welcome
  end
end

def get_number
  begin
  puts "\nPut any whole number or type quit when you want to quit:".colorize(:yellow)
  print "> "
    input = gets.strip
    input.downcase == 'quit' ? exit :
    input = Integer(input)
    puts "Alright, watch this!\n".colorize(:light_blue); sleep 1.5
    input.to_i.abs
  rescue
    puts "\nYou have to put a number if you want to see the magic!".colorize(:red)
    retry
  end
end

def magic_number(number)
  num_length = number.to_words.length
  if num_length == 4
    puts "#{number} is #{num_length} and FOUR is the MAGIC NUMBER!".colorize(:green); sleep 2
  else
    puts "#{number} is #{num_length}"; sleep 1.5
    magic_number(num_length)
  end
end

welcome

while true
  magic_number(get_number)
end
