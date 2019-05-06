require 'sinatra'

set :bind, '0.0.0.0'
set :port, 3000 

post '/' do
  "Hello World #{params[:data]}".strip
end
