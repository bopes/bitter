get '/' do
  # Home/splash page
  if session[:user]
    @user = session[:user]
    erb :index_private
  else
    erb :index_public
  end
end

post '/login' do
  # authenticate user, redirect to personal '/' page
  # session[:user] = user if user = User.authenticate(params[:username],
                                                    # params[:password])
  redirect '/'
end

post '/logout' do
  # sign user out, redirect to public '/'
  session.clear
  redirect '/'
end
