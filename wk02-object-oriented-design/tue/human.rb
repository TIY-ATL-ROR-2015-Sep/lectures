class HumanPlayer
  def get_guess
    puts "Please guess a number: "
    guess = gets.chomp.to_i
    until guess != 0
      puts "Please guess a *positive* number!"
      guess = gets.chomp.to_i
    end
    guess
  end
end
