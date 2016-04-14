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

end

get '/beats/:id' do
  # Show individual beat page
  erb :'/beats/show'
end

get 'beats/:id/edit' do
  # Show edit beat page (edit your beat)
  erb :'beats/edit'
end

put 'beats/:id' do
  # Save updates to a beat, redirect to own '/user/:id' page

end

delete 'beats/:id' do
  # Delete beat instance, redirect to own '/users/:id' page

end
