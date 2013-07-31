require 'sinatra'
require 'json'
require 'haml'

get "/" do
  haml :main
end

post '/', :provides => :json do
  # Do something with the params, then…
  halt 200, params.to_json 
end
