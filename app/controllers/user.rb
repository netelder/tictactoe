post '/login' do
  @currentuser = User.find_or_create_by(params[:user])
  session[:user_id] = @currentuser.id
  erb :lobby
end

post '/logout' do

  redirect '/'
end

