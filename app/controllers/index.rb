get '/' do
  if currentuser
    erb :play
  else
    erb :index
  end
end
