# before do
#   redirect '/' unless session[:user]
# end

get '/users' do
  # Show all users (list of users)
  @users = User.all
  erb :'/users/index'
end

get '/users/new' do
  # Show create new user page (sign up page)
  erb :'/users/new'
end

post '/users' do
  # Save new user, redirect to '/'
  user = User.new(username: params[:username], email: params[:email])
  user.password = params[:password]
  user.save
  redirect '/'
end

get '/users/:id' do
  # Show individual user page
  @user = User.find(params[:id])
  @beats = @user.beats.to_a
  @beats = @beats.sort_by{|beat| beat.created_at }.reverse
  erb :'/users/show'
end

get 'users/:id/edit' do
  # Show edit user page (edit your account details)
  @user = User.find(params[:id])
  erb :'users/edit'
end

put 'users/:id' do
  # Save updates to a user, redirect to '/users/:id'
  user = User.find(params:id)
  user.update(username: params[:username], email: params[:email])
  redirect "/users/#{session[:user].id}"
end

delete 'users/:id' do
  # Delete user instance, redirect to all users
  user = User.find(params[:id])
  user.destroy
  redirect '/users'
end
