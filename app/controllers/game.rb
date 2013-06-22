get '/game/start/' do
#empty game board
  @user_id = currentuser.id
  erb :play
end

post '/game/start/:user_id' do
  content_type :json

  @user = User.find(params[:user_id])
  @game = Game.create
  @game.user_1 = @user
  @game.save

  {userId:  @user.id, userName: @user.username, gameId: @game.id}.to_json
end

get '/game/:game_id/user/1/:user_id/start' do
  @currentuser = currentuser
  @game = Game.find(params[:game_id])

  erb :play
end

get '/game/:game_id/user/2/:user_id/start' do
  @game = Game.find(params[:game_id])
  if @game.user_2.nil? 
    @currentuser = currentuser
    @game.user_2 = User.find(params[:user_id])
    @game.save
    erb :play
  else
    redirect '/lobby'
  end
end


get '/game/:game_id/user/:user_id' do
  # ajax route for getting status (my turn?)
  game = Game.find(params[:game_id])
  user = User.find(params[:user_id])
  game.valid_move(user.id)
end

post '/game/:game_id/user/:user_id' do
  game = Game.find(params[:game_id])
  user = User.find(params[:user_id])
  cell_id = params[:cell_id]

  if game.valid_move(user.id)
    game.board = game.update_board(cell_id, user.id)
    game.last_player_id = params[:user_id]
    game.save!

    # game.update_attributes(:board => "")
    # game.update_attributes(:board => newboard)
    # p "game.board (after) = #{game.board}"
    # p "Game.find().board (after) = #{Game.find(params[:game_id]).board}"
    # game.update_board(params[:cell_id], user.id)
 
  end
end

