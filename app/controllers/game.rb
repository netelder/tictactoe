get '/game/start' do
#empty game board
  erb :play
end

get 'game/:game_id/user/:user_id' do
  # ajax route for getting status (my turn?)
end

post 'game/:game_id/user/:user_id' do
  # ajax route for posting a move
end

