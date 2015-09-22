require 'pry'

number = 42

puts "Please guess a number!"
guess = gets.chomp.to_i

until guess == number
  binding.pry
end

puts "You win!"
