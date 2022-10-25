def board 
  @board = Array.new(6) { Array.new(7, '-') }
end

board

puts "Welcome to Console Connect Four. First player to connect 4 pieces consecutively (horizontally, vertically or diagonally) wins the game. To place a piece, enter a column number (1 to 7)."
  
def index
  divider = "-----------------------------"

  puts "Here's the board:"
  puts divider
  puts "| #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} | #{@board[0][3]} | #{@board[0][4]} | #{@board[0][5]} | #{@board[0][6]} |"
  puts divider
  puts "| #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} | #{@board[1][3]} | #{@board[1][4]} | #{@board[1][5]} | #{@board[1][6]} |"
  puts divider
  puts "| #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} | #{@board[2][3]} | #{@board[2][4]} | #{@board[2][5]} | #{@board[2][6]} |"
  puts divider
  puts "| #{@board[3][0]} | #{@board[3][1]} | #{@board[3][2]} | #{@board[3][3]} | #{@board[3][4]} | #{@board[3][5]} | #{@board[3][6]} |"
  puts divider
  puts "| #{@board[4][0]} | #{@board[4][1]} | #{@board[4][2]} | #{@board[4][3]} | #{@board[4][4]} | #{@board[4][5]} | #{@board[4][6]} |"
  puts divider
  puts "| #{@board[5][0]} | #{@board[5][1]} | #{@board[5][2]} | #{@board[5][3]} | #{@board[5][4]} | #{@board[5][5]} | #{@board[5][6]} |"
  puts divider
  puts "  1   2   3   4   5   6   7"
end

index


def player_one_move 
  puts  "Please enter a number between 1 and 7."

  player_one_choice = gets.to_i

  row = 0
  column = (player_one_choice - 1)
  num = 5

  if player_one_choice == 1

    if @board[row][column] != "-"
      puts "This column is full, sorry."
    end

    loop do
      if @board[num][column] == "-"
        @board[num][column] = "X"
      else
        num -= 1
      end

      break if @board[num][column] = "X"
    end
  end
end

player_one_move
index
player_one_move
index
player_one_move
index