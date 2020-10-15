# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination # return the win_combination indexes that won.
    end
  end
  false
end

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
  if full?(board) != true
    return false
  elsif won?(board) == false
    return true
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif won?(board) != false
    return true
  end
end

def winner(board)
  positions_array = won?(board)
  return positions_array[0]
end


# full?(board) == true &&

# if full?(board) == true && won?(board) != true
#   return true
# elsif full?(board) == true && won?(board) == true
#   return false
# elsif full?(board) == false
#   return false
# end

  # board.each do |position|
  #   index = board[position]
  #   if position != (position_taken?(board, index))
  #     return false
  #   end
  # end
  # return true




  # all_true = board.all? do |index|
  # position_taken?(board, index)
  # end
  # if all_true
  #   return true
  # end
