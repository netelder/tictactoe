get '/game/start/' do
#empty game board
  @user_id = currentuser.id
  erb :play
end

post '/game/start/:user_id' do
  content_type :json
  @user = User.find(params[:user_id])
  @game = Game.create(user_1: @user)
  {userId:  @user.id, userName: @user.username, gameId: @game.id}.to_json
end

get '/game/start/:game_id/user/:user_id' do
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
end

post '/game/:game_id/user/:user_id' do
  # ajax route for posting a move
end

