print("Connect Four. Get four in a row vertically, horizontally or diagonally before your opponent to win.")

player_one = input("Player 1, enter your name: ")
player_two = input("Player 2, enter your name: ")

board = [['.' for _ in range(7)] for _ in range(6)]

divider = "-----------------------------"

def print_board():
    print("Here's the board:")
    print(divider)
    for row in board:
        print("| {} | {} | {} | {} | {} | {} | {} |".format(*row))
        print(divider)
    print("  1   2   3   4   5   6   7")

print_board()

def get_player_move(player, symbol):
    while True:
        player_selection = input(player + ", where would you like to move? Enter a column number from 1 to 7. ")
        if player_selection.isdigit():
            player_selection = int(player_selection)
            if 1 <= player_selection <= 7:
                column = (player_selection - 1)
                row = 5

                if board[0][column] == '.':
                    while row >= 0:
                        if board[row][column] == '.':
                            board[row][column] = symbol
                            return
                        row -= 1
                else:
                    print("That column is full, please choose another.")
        else:
            print("Error, please enter a number between 1 and 7.")

def check_win(board):
# check horizontal spaces
    for row in range(len(board)):
        for col in range(len(board[0]) - 3):
            if board[row][col] == board[row][col + 1] == board[row][col + 2] == board[row][col + 3] != '.':
                return True

    # check vertical spaces
    for row in range(len(board) - 3):
        for col in range(len(board[0])):
            if board[row][col] == board[row + 1][col] == board[row + 2][col] == board[row + 3][col] != '.':
                return True

    # check / diagonal spaces
    for row in range(len(board) - 3):
        for col in range(len(board[0]) - 3):
            if board[row][col] == board[row + 1][col + 1] == board[row + 2][col + 2] == board[row + 3][col + 3] != '.':
                return True

    # check \ diagonal spaces
    for row in range(3, len(board)):
        for col in range(len(board[0]) - 3):
            if board[row][col] == board[row - 1][col + 1] == board[row - 2][col + 2] == board[row - 3][col + 3] != '.':
                return True

    return False

def is_board_full(board):
    for row in board:
        for cell in row:
            if cell == '.':
                return False
    return True

def play_game():
    while True:
        # Player 1's turn
        get_player_move(player_one, 'X')
        print_board()

        if is_board_full(board):
            print("It's a draw!")
            break

        if check_win(board):
            print(player_one + " wins!")
            break

        # Player 2's turn
        get_player_move(player_two, 'O')
        print_board()

        if is_board_full(board):
            print("It's a draw!")
            break

        if check_win(board):
            print(player_two + " wins!")
            break

play_game()