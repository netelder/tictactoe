post '/login' do

  erb :lobby
end

post '/logout' do

  redirect '/'
end

