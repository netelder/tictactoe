helpers do

  def waiting_players
    Game.all(:conditions => ['user_2_id IS NULL'])
  end

end
