# before "/users/*" do
#   redirect '/' unless session[:user]
# end

get '/' do
  # Home/splash page
  if session[:user]
    @user = session[:user]
    @followed_users = @user.following.to_a
    @beats= []
    @followed_users.each {|user| @beats << user.beats.to_a }
    @beats = @beats.flatten
    @beats = @beats.sort_by{|beat| beat.created_at }.reverse
    erb :index_private
  else
    @beats = Beat.all.to_a[0..4]
    erb :index_public
  end
end

post '/login' do
  # authenticate user, redirect to personal '/' page
  user = User.authenticate(params[:username], params[:password])
  session[:user] = user
  redirect '/'
end

get '/logout' do
  # sign user out, redirect to public '/'
  session.clear
  redirect '/'
end

