class Board
  def initialize
    @grid = Array.new(6) { Array.new(7, '   ') }
  end

  def index
    divider = "------------------------------------"
    board_numbers = [[1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14], [15, 16, 17, 18, 19, 20, 21], [22, 23, 24, 25, 26, 27, 28], [29, 30, 31, 32, 33, 34, 35], [36, 37, 38, 39, 40, 41, 42]]

    puts "Here's the board index:"
    puts divider
    puts "| #{board_numbers[0][0]}  | #{board_numbers[0][1]}  | #{board_numbers[0][2]}  | #{board_numbers[0][3]}  | #{board_numbers[0][4]}  | #{board_numbers[0][5]}  | #{board_numbers[0][6]}  |"
    puts divider
    puts "| #{board_numbers[1][0]}  | #{board_numbers[1][1]}  | #{board_numbers[1][2]} | #{board_numbers[1][3]} | #{board_numbers[1][4]} | #{board_numbers[1][5]} | #{board_numbers[1][6]} |"
    puts divider
    puts "| #{board_numbers[2][0]} | #{board_numbers[2][1]} | #{board_numbers[2][2]} | #{board_numbers[2][3]} | #{board_numbers[2][4]} | #{board_numbers[2][5]} | #{board_numbers[2][6]} |"
    puts divider
    puts "| #{board_numbers[3][0]} | #{board_numbers[3][1]} | #{board_numbers[3][2]} | #{board_numbers[3][3]} | #{board_numbers[3][4]} | #{board_numbers[3][5]} | #{board_numbers[3][6]} |"
    puts divider
    puts "| #{board_numbers[4][0]} | #{board_numbers[4][1]} | #{board_numbers[4][2]} | #{board_numbers[4][3]} | #{board_numbers[4][4]} | #{board_numbers[4][5]} | #{board_numbers[4][6]} |"
    puts divider
    puts "| #{board_numbers[5][0]} | #{board_numbers[5][1]} | #{board_numbers[5][2]} | #{board_numbers[5][3]} | #{board_numbers[5][4]} | #{board_numbers[5][5]} | #{board_numbers[5][6]} |"
    puts divider
  end
end

