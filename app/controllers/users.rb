get '/users/new' do
  @user = User.new
  erb :"users/new"
end

# get "/users/:id" do
#   @user = User.find(params[:id])
#   erb :"users/show"
# end

post "/users" do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    erb :"users/new"
  end
end
