require 'sinatra/base'
require 'sinatra'

# Starts a server that responds to get request with test view
class BirthdayGreeter < Sinatra::Base
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
