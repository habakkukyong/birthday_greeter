require 'sinatra/base'
require 'sinatra'

# Starts a server that responds to get request with test view
class TestServer < Sinatra::Base
  get '/' do
    p 'Get request made'
    erb :test
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
