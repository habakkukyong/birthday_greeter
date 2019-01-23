require 'sinatra/base'

# Starts a server that responds to get request with test view
class TestServer < Sinatra::Base
  get '/' do
    erb(:test)
  end
end
