
function new_board()
    board = { { " ", " ", " " }, { " ", " ", " " }, { " ", " ", " " } }
    return board
end

function add_token(coord1, coord2, token)
    if board[coord1][coord2] == " " then
        board[coord1][coord2] = token
        return board
    end
    return error()
end

function ai_token(token)
    while true do
        coord1 = math.random(1, 3)
        coord2 = math.random(1, 3)
        if board[coord1][coord2] == " " then
            board[coord1][coord2] = token
            do return board end
            break
        end
    end
    return error()
end

function get_winner(Board, token)
    for i = 1, 3, 1 do
        if Board[i] == { token, token, token } then
            return true, 'winner'
        end
    end

    for i = 1, 3, 1 do
        if Board[1][i] == token and Board[2][i] == token and Board[3][i] == token then
            return true, 'winner'
        end
    end

    if Board[1][1] == token and Board[2][2] == token and Board[3][3] == token then
        return true, 'winner'
    end

    if Board[1][3] == token and Board[2][2] == token and Board[3][1] == token then
        return true, 'winner'
    end

    draw = check_for_draw()
    if draw == true then
        return true, 'draw'
    end

    return false
end

function check_for_draw()
    for index, row in ipairs(board) do
        for index, value in ipairs(row) do
            if value == " " then
                return false
            end
        end
    end
    return true
end

function print_board()
    print("------------------")
    for index, row in ipairs(board) do
        printlist = {}
        for index, value in ipairs(row) do
            if value == " " then
                table.insert(printlist, "-")
            else
                table.insert(printlist, value)
            end
        end
        print(printlist[1], printlist[2], printlist[3])
    end
    print("------------------")

end