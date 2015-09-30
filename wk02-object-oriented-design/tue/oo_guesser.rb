require "pry"
require "./human"
require "./random"
require "./counting"
require "./smart"

MAX = 1000000000

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    number = rand(1..MAX)
    result = nil
    guess = @player.get_guess(result)
    count = 1
    until guess == number
      if guess > number
        puts "Too High!"
        result = :high
      else
        puts "Too Low!"
        result = :low
      end
      guess = @player.get_guess(result)
      puts "Player guessed #{guess}. Only off by #{(number - guess).abs}"
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end

game = GuessingGame.new(SmartPlayer.new)

binding.pry

puts "just screwing around"
