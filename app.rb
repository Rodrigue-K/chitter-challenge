require 'pry'
require 'sinatra/base'
require 'sinatra-initializers'
require './config/data_mapper'
require './config/1_sentiment_initializer'

class Chitter < Sinatra::Base
  register Sinatra::Initializers
  enable :sessions
  enable :method_override

  ENV['RACK_ENV'] ||= 'development'

  get '/' do
    erb :index
  end
  
  get '/signup' do
    erb :signup
  end

  post '/signup' do
    @user = User.new(email: params[:email], username: params[:username], password: params[:password])
    if @user.valid?
      @user = User.create(email: params[:email], username: params[:username], password: params[:password])
      session[:user_id] = @user.id
      redirect '/profile'
    else
      erb :error
    end
  end

  get '/signin' do
    erb :signin
  end

  post '/signin' do
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect '/profile'
    else
      redirect '/'
    end
   end


  get '/profile' do
    @peeps = Peep.all
    erb :profile
  end


  post '/profile' do
    Peep.create(post: params[:post])
    redirect '/profile'
  end

  private

  def signed_in?
  !current_user.nil?
  end

  def current_user
  @current_user ||= User.get(session[:user_id])
  end
end
