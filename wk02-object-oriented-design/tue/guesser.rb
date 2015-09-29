the_number = rand(1..100)

puts "Please guess a number: "
guess = gets.chomp.to_i

until guess == the_number
  if guess > the_number
    puts "Too High!"
  else
    puts "Too Low!"
  end
end

puts "God you're good."
