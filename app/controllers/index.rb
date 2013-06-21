get '/' do
  if currentuser
    erb :lobby
  else
    erb :index
  end
end
