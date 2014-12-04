require 'sinatra'

get '/' do
  puts request
  content_type 'text/plain'
  "Hello World!"
end
