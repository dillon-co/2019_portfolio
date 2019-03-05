require 'deep_clone'
require 'pycall/import'
include PyCall::Import
class AIAgent < ApplicationRecord
  extend PyCall::Import



  def x_square
    'X'
  end

  def o_square
    'O'
  end

  def one_hot_square(square)
    if square = x_square
      np.array([1,0,0])
    elsif square = o_square
      np.array([0,1,0])
    else
      np.array([0,0,1])
    end
  end

  def one_hot_board(board)
    
  end

  def x_wins
    'X wins!'
  end

  def o_wins
    'O wins!'
  end

  def draw
    'Draw!'
  end
#
  def is_x_turn(pos)
    x_count = 0
    pos.each do |row|
      x_count += row.count(x_square)
      x_count -= row.count(o_square)
    end
    x_count == 0
  end
#
# #Checks if board is full
  def is_full(pos)
    pos.each do |row|
      full_boolean = !row.include?(nil)
    end
    full_boolean
  end
#
#
  def get_static_eval(pos)
    lines = [[0, 1, 2],
             [3, 4, 5],
             [6, 7, 8],
             [0, 3, 6],
             [1, 4, 7],
             [2, 5, 8],
             [0, 4, 8],
             [2, 4, 6]]

    board = pos.flatten
    lines.each do |line|
      a, b, c = line
      if board[a] == x_square && board[b] == x_square && board[c] == x_square
        return x_wins
      elsif board[a] == o_square && board[b] == o_square && board[c] == o_square
        return o_wins
      else
        return draw
      end
    end
  end

  def input_placeholder
    tf.placeholder(tf.placeholder(tf.float32, [9, 3],name:'board_state'))
  end

  def output_placeholder
    tf.placeholder(tf.float32, [9], nn_move)
  end


  def turn_board_to_one_hot_array
  end

  def tensor_tic_tac_toe
    # one_hot_board_position = 0 0 1 = blank, 1 0 0 = x, 0 1 0 = 0
    pyimport 'tensorflow', as: 'tf'
    pyimport 'numpy', as: 'np'


  end
end
