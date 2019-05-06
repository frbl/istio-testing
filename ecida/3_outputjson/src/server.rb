$stdout.sync = true
require 'sinatra'

set :bind, '0.0.0.0'
set :port, 3001 

post '/' do
  payload = JSON.parse(request.body.read)['data']
  puts "======================"
  puts "Result:\n #{payload} "
  puts "======================"
  payload
end
