get '/game/start/' do
#empty game board
  @user_id = currentuser.id
  erb :play
end

post '/game/start/:user_id' do
content_type :json
#empty game board
puts "7" * 80
puts params
@user = User.find(params[:user_id])
@game = Game.create
@game.user_1 = @user
p @game
#pass the user into game user_1
{username:  @user.username, game_id: @game.id}.to_json
end


get 'game/:game_id/user/:user_id' do
  # ajax route for getting status (my turn?)
end

post 'game/:game_id/user/:user_id' do
  # ajax route for posting a move
end

