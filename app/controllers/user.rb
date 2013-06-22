post '/login' do
  @currentuser = User.find_or_create_by_username(params[:user])
  session[:user_id] = @currentuser.id
  erb :lobby
end

get '/logout' do
   session.clear
  redirect '/'
end
