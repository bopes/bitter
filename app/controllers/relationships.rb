post '/relationships' do
  Relationship.create(follower_id: session[:user].id, followed_id: params[:followed])
  redirect '/users'
end

delete '/relationships' do
  dead = Relationship.find_by(follower_id: session[:user].id, followed_id: params[:followed])
  dead.destroy
  redirect '/users'
end
