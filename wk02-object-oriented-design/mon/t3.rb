require 'pry'

WINS = [[0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]]

def show_board(board)
  puts "
      -----------
     | #{board[0]} | #{board[1]} | #{board[2]} |
     | #{board[3]} | #{board[4]} | #{board[5]} |
     | #{board[6]} | #{board[7]} | #{board[8]} |
      -----------
  "
end

def choose_player
  puts "Would you like to play as 'X' or 'O'?"
  result = gets.chomp.upcase
  until ["X", "O"].include?(result)
    puts "Sorry, you must choose 'X' or 'O', pick a letter."
    result = gets.chomp.upcase
  end
  result
end

def win?(board)
  WINS.any? do |x, y, z|
    board[x] == board[y] && board[y] == board[z]
  end
end

def draw?(board)
  available_moves(board).empty?
  # board.all? { |x| x.is_a?(String) }
end

def game_over?(board)
  win?(board) || draw?(board)
end

def available_moves(board)
  board.reject { |x| x.is_a?(String) }
end

def take_turn(board, player)
  show_board(board)
  puts "Player #{player}, please choose a numbered space on the board: "
  move = gets.chomp.to_i
  until available_moves(board).include?(move)
    puts "#{move} isn't an available space. Choose again: "
    move = gets.chomp.to_i
  end
  move
end

def switch_player(player)
  player == "X" ? "O" : "X"
end

def finito(player, board)
  show_board(board)
  if win?(board)
    puts "The game is over. #{player} won!"
  else
    puts "The game is a draw. Maybe we should stop playing tic tac toe."
  end
end

def tic_tac_toe
  board = (1..9).to_a
  player = choose_player
  until game_over?(board)
    move = take_turn(board, player)
    board[move - 1] = player
    player = switch_player(player) unless game_over?(board)
  end
  finito(player, board)
end

tic_tac_toe
