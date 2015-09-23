require "pry"
require "set"

word_list = [
  "chicken", "duck", "dog", "cat", "clown",
  "brick", "bananas", "totalitarianism",
  "coffee", "metacircular", "interpreter",
  "wednesday", "ruby", "evaluation", "consternation",
  "chicanery"
]

MAX_TURNS = 6
answer = word_list.sample

def greeting
  puts "Welcome to the game of Hangman!\n\n"
  puts "I'm not even gonna explain it."
  puts "Just guess letters dummy."
end

def game_over?(answer, guesses)
  turns_left(guesses, answer).zero? || win?(answer, guesses)
end

def show_progress(partial_word, answer, guesses)
  turns_remaining = turns_left(guesses, answer)
  puts
  puts "The current word is: #{partial_word}"
  puts "You have #{turns_remaining} guesses left."
end

def prompt_player
  puts
  puts "Please guess a letter: "
  letter = gets.chomp

  until ('a'..'z').to_a.include?(letter)
    puts "#{letter} is not a single lowercase letter. Please guess again: "
    letter = gets.chomp
  end
  letter
end

def make_partial(guesses, answer)
  # blank a letter in the answer if it isn't in the guesses
  answer.chars.map do |letter|
    if guesses.include?(letter)
      letter
    else
      "-"
    end
  end
end

def take_turn(guesses, answer)
  partial_word = make_partial(guesses, answer).join
  show_progress(partial_word, answer, guesses)
  prompt_player
end

def win?(answer, guesses)
  answer_set = answer.chars.to_set
  # guesses.superset?(answer_set)
  guesses >= answer_set
end

def postmortem(answer, guesses)
  if win?(answer, guesses)
    puts "Nice work! You win."
  else
    puts "The word was #{answer}. Better luck next time."
  end
end

def turns_left(guesses, answer)
  answer_set = answer.chars.to_set
  wrong_guesses = (guesses - answer_set).count
  # wrong_guesses = guesses.difference(answer_set).count
  MAX_TURNS - wrong_guesses
end

def hangman(answer)
  guesses = Set.new
  greeting
  until game_over?(answer, guesses)
    guess = take_turn(guesses, answer)
    guesses.add(guess)
  end
  postmortem(answer, guesses)
end

def play_again?
  puts "Would you like to play again? (y/n)"
  gets.chomp
end

def play_hangman(words)
  answer = words.sample
  hangman(answer)
end

def play(words)
  play_hangman(words)
  choice = play_again?
  until choice == "n"
    play_hangman(words)
    choice = play_again?
  end
end

play(word_list)
