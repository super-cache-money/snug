
require 'sinatra'
get '/frank-says' do ||
  'Put this in your pipe & smoke it!'
end



get '/:user' do |user|
  "hello #{user}"
end

