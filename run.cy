-- A command-line tic-tac-toe game for two human players, written in Cyber
import os
print "We're playing tic-tac-toe!"
print "Each space is number 0 through 8."
var game_over = false
var turn_number = 0
var board = [0,0,0,0,0,0,0,0,0]

while game_over != true:
    present_board(board)
    var player = turn_number % 2 + 1
    print "Player $(player)'s turn (Enter a number 0 through 8)"

    var user_input = os.readLine()
    var current_move = int(user_input)

    board = execute_player_move(current_move, player, board)

    var winning_player = check_for_winner(board)
    if winning_player != 0:
        print "Player $(winning_player) wins!!"
        game_over = true
    else turn_number == 8:
        -- An example of a tie game: 0 2 1 3 4 7 5 8 6
        print "Tie game!"
        game_over = true
    else: 
        turn_number = turn_number + 1


func execute_player_move(current_move, player, board):
    validate_move(current_move)
    if board[current_move] != 0:
        print "Please pick an unoccupied space!"
        var user_input = os.readLine()
        var current_move = int(user_input)
        board = execute_player_move(current_move, player, board)
    else:
        if player == 1:
            board[current_move] = 1
        else player == 2: 
            board[current_move] = 10
    return board

func present_board(board):
    -- I would for `for board each i, space:` but I can't figure out how to 
    -- print without it inserting a newline
    print '$(display_space(board[0])) $(display_space(board[1])) $(display_space(board[2]))'
    print '$(display_space(board[3])) $(display_space(board[4])) $(display_space(board[5]))'
    print '$(display_space(board[6])) $(display_space(board[7])) $(display_space(board[8]))'

func display_space(raw):
    if raw == 0:
        return "_"
    else raw == 1:
        return "X"
    else raw == 10:
        return "O"

func check_for_winner(b):
    -- initalize sums
    var sums = [0,0,0,0,0,0,0,0]
    -- calculate sums
    sums[0] = b[2] + b[4] + b[6]
    sums[1] = b[0] + b[3] + b[6]
    sums[2] = b[1] + b[4] + b[7]
    sums[3] = b[2] + b[5] + b[8]
    sums[4] = b[0] + b[4] + b[8]
    sums[5] = b[6] + b[7] + b[8]
    sums[6] = b[3] + b[4] + b[5]
    sums[7] = b[0] + b[1] + b[2]

    for sums -> sum:
        if sum == 3:
            return 1
        else sum == 30:
            return 2
    -- If we got here, no one has won yet!
    return 0

func validate_move(current_move):
    if current_move == 9:
        print "OK, quitting"
    else current_move < 0 or current_move > 9:
        print "Error: Invalid move. Quitting."
