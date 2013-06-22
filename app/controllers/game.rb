get '/game/start/' do
#empty game board
  @user_id = currentuser.id
  erb :play
end

post '/game/start/:user_id' do
#empty game board
@user = User.find()
@game = Game.create
#pass the user into game user_1
{username:  @user.username, game_id: @game.id}
end


get 'game/:game_id/user/:user_id' do
  # ajax route for getting status (my turn?)
end

post 'game/:game_id/user/:user_id' do
  # ajax route for posting a move
end

