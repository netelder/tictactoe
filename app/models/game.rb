class Game < ActiveRecord::Base

  belongs_to :user_1, :class_name => 'User'
  belongs_to :user_2, :class_name => 'User'

  attr_accessible :board, :user_1, :user_2

  def valid_move(user_id)
    last_player_id != user_id
  end

  def two_players?
    !user_1.nil? && !user_2.nil?
  end

  def which_player(user_id)
    return 1 if user_1_id == user_id
    return 2 if user_2_id == user_id
  end

  def update_board(cell_id, user_id)
    newboard = board.clone
    newboard[cell_id.to_i] = which_player(user_id).to_s
    newboard
  end

end

