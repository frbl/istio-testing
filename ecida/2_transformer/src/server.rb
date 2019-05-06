$stdout.sync = true
require 'sinatra'
require 'httparty'

set :bind, '0.0.0.0'
set :port, 3000 

post '/' do
  puts "Received request!"
  puts "Calling: #{ENV['SINK']}"
  payload = JSON.parse(request.body.read)
  puts "Parsed"
  content = {data: [{type: 'This is something', data: payload['data']}] }.to_json
  puts "Content created"
  HTTParty.post(ENV['SINK'], body: content, :headers => {'Content-Type'=>'application/json'},)
  puts "Calling sub service"
  "Hello World #{payload['data']}".strip
end
