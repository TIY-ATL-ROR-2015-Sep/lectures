class RandomPlayer < Player
  def initialize(name="The Nameless One")
    @name = name
    @alphabet = ('a'..'z').to_a
  end

  def get_guess
    @alphabet.sample
  end
end
