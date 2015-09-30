class HumanPlayer
  def initialize(name="The Nameless One")
    @name = name
  end

  def name
    @name
  end

  def get_guess
    guess = get_input
    until valid_guess?(guess)
      guess = get_input
    end
    guess
  end

  def valid_guess?(guess)
    ('a'..'z').include?(guess)
  end

  private
  def get_input
    puts "Please guess a letter: "
    gets.chomp.downcase
  end
end
