def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0,8)
    return FALSE
  else return TRUE
end
end

def position_taken?(board, index)
  if board[index]=="X" || board[index]=="O"
    return TRUE
  else return FALSE
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end
  
def move(board, index, character="X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
     move(board, index)
    display_board(board)
  else turn(board)
  end
end
