=begin

### Hangman Design

# Interfaces

#### Player Interface (duck typing)
#### Implemented by HumanPlayer and RandomPlayer
* new(name?)
* name
  - returns the player's name or "The Nameless One" if no name was supplied
* get_guess
  - return a letter
* valid_guess?(guess)
  - checks guess to see if it is a lowercase letter

## Game
* new(dictionary, player)
* play
* new_game?
* game_over?
* guesses (maybe?)

#### Dictionary Interface (duck typing)
#### Implemented by FileDictionary and WordListDictionary
* random_word
  - always returns a random string that hasn't been seen previously until we run out of words

=end
