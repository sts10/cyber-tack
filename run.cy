-- A command-line tic-tac-toe game in Cyber
game_over = false
turn_number = 0
board = [0,0,0,0,0,0,0,0,0]

while game_over != true:
    present_board(board)
    player = turn_number % 2 + 1
    print "Player {player}'s turn"

    current_move = getInput().toString()
    print "Received current_move as {current_move}"
    -- User can quit with 9
    if current_move == 9:
        exit(1)

    board = execute_player_move(current_move, player, board)
    turn_number = turn_number + 1


func execute_player_move(current_move, player, board):
    -- we could validate current_move better right here
    if board[current_move] != 0:
        print "Please pick an unoccupied space!"
        current_move = getInput().toString()
        board = execute_player_move(current_move, player, board)
    else:
        if player == 1:
            board[current_move] = 1
        else player == 2: 
            board[current_move] = 10
    return board

func present_board(board):
    print '{display_space(board[0])} {display_space(board[1])} {display_space(board[2])}'
    print '{display_space(board[3])} {display_space(board[4])} {display_space(board[5])}'
    print '{display_space(board[6])} {display_space(board[7])} {display_space(board[8])}'
    -- can't get this loop to work cuz I can't
    -- print on same line
    -- for board each i, space:
        --print '{i}. {space}'

func display_space(raw):
    if raw == 0:
        return "_"
    else raw == 1:
        return "X"
    else raw == 10:
        return "O"

