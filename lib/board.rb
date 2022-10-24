class Board
  attr_reader :grid
  
  def initialize
    @grid = Array.new(6) { Array.new(7, ' ') }
  end

  def welcome_message
    <<~HEREDOC
      Welcome to Console Connect Four. First player to connect 4 pieces consecutively (horizontally, vertically or diagonally) wins the game.

      To place a piece, enter a column number (1 to 7).

    HEREDOC
  end

  def index
    divider = "-----------------------------"

    puts "Here's the board:"
    puts divider
    puts "| #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]} | #{@grid[0][3]} | #{@grid[0][4]} | #{@grid[0][5]} | #{@grid[0][6]} |"
    puts divider
    puts "| #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]} | #{@grid[1][3]} | #{@grid[1][4]} | #{@grid[1][5]} | #{@grid[1][6]} |"
    puts divider
    puts "| #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]} | #{@grid[2][3]} | #{@grid[2][4]} | #{@grid[2][5]} | #{@grid[2][6]} |"
    puts divider
    puts "| #{@grid[3][0]} | #{@grid[3][1]} | #{@grid[3][2]} | #{@grid[3][3]} | #{@grid[3][4]} | #{@grid[3][5]} | #{@grid[3][6]} |"
    puts divider
    puts "| #{@grid[4][0]} | #{@grid[4][1]} | #{@grid[4][2]} | #{@grid[4][3]} | #{@grid[4][4]} | #{@grid[4][5]} | #{@grid[4][6]} |"
    puts divider
    puts "| #{@grid[5][0]} | #{@grid[5][1]} | #{@grid[5][2]} | #{@grid[5][3]} | #{@grid[5][4]} | #{@grid[5][5]} | #{@grid[5][6]} |"
    puts divider
    puts "  1   2   3   4   5   6   7"
  end

  def player_one_move
    puts  "Please enter a number between 1 and 7."
  
    player_one_choice = gets.to_i
  
    case player_one_choice
      when 1
        row = 0
        column = (player_one_choice - 1)
        num = 5

        # write a loop that checks where the empty square is
        # does @grid[num][column] = nil? if so, return num
        # if not, num -= 1
        # then @grid[num][column] = "X"
        # if @grid[0][0] == "X", print "That column is full, please choose another."
      end


      else 
        puts "Error."
    end
  end
end

