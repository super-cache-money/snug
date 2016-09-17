
require 'sinatra'
require_relative 'wongo'
get '/frank-says' do ||
  'Put this in your pipe & smoke it!'
end



# get '/:user' do |user|
#   "hello #{user}"
# end

get '/' do
  haml :index
end

post '/login' do
  validateUser(params[:username], params[:password]).to_s
end

post '/register' do

end

def validateUser(username, password)
  #if password matches return user
  if getUser(username)["password"] == password
    getUser(username)
  else
    "user not found in our records"
  end
end


