=begin

### Hangman Design

# Interfaces

#### Player Interface (duck typing)
* new(name?)
* name
  - returns the player's name or "The Nameless One" if no name was supplied
* get_guess
  - return a letter

## HumanPlayer
* get_guess

## RandomPlayer
* get_guess

## Game
* new(dictionary, player)
* play
* new_game?
* game_over?
* guesses (maybe?)


#### Dictionary Interface (duck typing)
* random_word
  - always returns a random string that hasn't been seen previously until we run out of words

## FileDictionary
* random_word

## WordListDictionary
* random_word

=end
