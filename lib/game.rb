require_relative 'board'

puts @board = Board.new

puts @board.welcome_message

8.times do
  @board.index
  @board.player_one_move
  @board.index
end
