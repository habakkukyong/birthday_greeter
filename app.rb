require 'sinatra/base'
require 'sinatra'

# Starts a server that responds to get request with test view
class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/greeting' do
    session[:name] = params[:name]
    redirect '/greeting'
  end

  get '/greeting' do
    @name = session[:name]
    erb :greeting
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
