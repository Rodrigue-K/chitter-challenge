require 'pry'
require 'sinatra/base'
require 'sinatra-initializers'
require './config/data_mapper'
require './config/1_sentiment_initializer'

class Chitter < Sinatra::Base
  register Sinatra::Initializers

  ENV['RACK_ENV'] ||= 'development'

  get '/' do
    @peeps = Peep.all
    erb :index
  end

  post '/' do
    Peep.create(post: params[:post])
    redirect '/'
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    @user = User.new(email: params[:email], password: params[:password])
    if @user.valid?
      @user = User.create(email: params[:email], password: params[:password])
      session[:user_id] = @user.id
      redirect '/profile'
    else
      erb :error
  end

  get '/profile' do
    erb :profile
  end

end
