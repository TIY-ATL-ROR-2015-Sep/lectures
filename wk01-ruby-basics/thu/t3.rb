require 'pry'

board = (1..9).to_a

# def show_board(board)
#   3.times do |row|
#     3.times do |column|
#       print "#{board[row*3 + column]} "
#     end
#     puts
#   end
# end

# map, all?, any?

def show_board(board)
  puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
  "
end

binding.pry

puts "hi there"
