helpers do

  def currentuser
    @currentuser ||= User.find(session[:user_id]) if session[:user_id]
  end

end
