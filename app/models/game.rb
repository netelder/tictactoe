class Game < ActiveRecord::Base

  belongs_to :user_1, :class_name => 'User'
  belongs_to :user_2, :class_name => 'User'

  def valid_move(user_id)
    last_player != user_id
  end

  def set_last_player(user_id)
    last_player = user_id
  end

  def two_players?
    !user_1.nil? && !user_2.nil?
  end
end

# #In Javascript, we have to send in the ID of the square
# #that was clicked.
# # In post 'game/game_id/user/user_id' do |game_id, user_id|
# game = Game.find(game_id)
# if game.valid_move(user_id)
#   game.board[index] = [Whatever the player is assigned] 
#   game.set_last_player(user_id)
#   game.save
# end
