get '/users' do
  # Show all users (list of users)
  erb :'/users/index'
end

get '/users/new' do
  # Show create new user page (sign up page)
  erb :'/users/new'
end

post '/users' do
  # Save new user, redirect to '/'

end

get '/users/:id' do
  # Show individual user page
  erb :'/users/show'
end

get 'users/:id/edit' do
  # Show edit user page (edit your account details)
  erb :'users/edit'
end

put 'users/:id' do
  # Save updates to a new user, redirect to '/users/:id'

end

delete 'users/:id' do
  # Delete user instance, redirect to all users

end
