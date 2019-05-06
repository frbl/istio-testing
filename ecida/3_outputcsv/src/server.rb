$stdout.sync = true
require 'sinatra'
require 'csv'

set :bind, '0.0.0.0'
set :port, 3001 

post '/' do
  payload = JSON.parse(request.body.read)['data']
  csv_string = CSV.generate do |csv|
    csv << payload.first.keys
    payload.each { |hash| csv << hash.values }
  end
  puts "======================"
  puts "Result:\n #{csv_string} "
  puts "======================"
  csv_string
end
