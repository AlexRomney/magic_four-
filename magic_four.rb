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
  puts "\nPut any whole number or type quit when you want to quit:".colorize(:yellow)
  print "> "
  input = gets.strip
  exit if input.downcase == 'quit'
  puts "Alright, watch this!".colorize(:light_blue); sleep 2
  input.to_i.abs
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
