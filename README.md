Connect Four Python Game

This is a simple console-based version of the game Connect Four, written in Python.
Overview

The game is designed for two players. Each player takes turns to drop a disk into one of seven columns. The disk falls to the lowest available row in the chosen column. The first player to align four of their own disks vertically, horizontally, or diagonally wins the game. If the board fills up before anyone has won, the game ends in a draw.
How to Run the Game

    Ensure that Python 3 is installed on your system.
    Clone this repository to your local machine or download the connect_four.py file.
    Run the script from the command line by navigating to the directory containing connect_four.py and typing python connect_four.py.
    Follow the prompts in the console to play the game.

Game Rules

    Player 1 is asked to enter their name and is assigned the 'X' symbol.
    Player 2 is then asked to enter their name and is assigned the 'O' symbol.
    The game board is displayed, consisting of 6 rows and 7 columns, all initially empty.
    Players take turns to choose a column in which to drop their disk. They do this by entering a number from 1 to 7 corresponding to the column where they want to drop their disk.
    If a player tries to drop a disk in a full column, they are prompted to choose a different column.
    The game continues until one player has four of their disks aligned vertically, horizontally, or diagonally, at which point they are declared the winner, or until the board is full, in which case the game is a draw.
    After a game ends, players are asked if they want to play again. If they do, a new game starts. If not, the program ends.