# before do
#   redirect '/' unless session[:user]
# end

get '/beats' do
  # Show list of beats (partial)
  erb :'/beats/index'
end

get '/beats/new' do
  # Show create new beat forms (partial)
  erb :'/beats/new'
end

post '/beats' do
  # Save new beat, redirect to own '/user/:id' page
  Beat.create(content: params[:content], user_id: session[:user].id)
  redirect "/users/#{session[:user].id}"
end

get '/beats/:id' do
  # Show individual beat page
  @beat = Beat.find(params[:id])
  erb :'/beats/show'
end

get 'beats/:id/edit' do
  # Show edit beat page (edit your beat)
  @beat = Beat.find(params[:id])
  erb :'beats/edit'
end

put 'beats/:id' do
  # Save updates to a beat, redirect to own '/user/:id' page
  beat = Beat.find(params[:id])
  beat.update(content: params[:content])
  redirect "/users/#{session[:user].id}"
end

delete 'beats/:id' do
  # Delete beat instance, redirect to own '/users/:id' page
  beat = Beat.find(params[:id])
  beat.destroy
  redirect "/users/#{session[:user].id}"
end
