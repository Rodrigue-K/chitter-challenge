require 'pry'
require 'sinatra/base'
require 'sinatra-initializers'
require './config/data_mapper'
require './config/1-sentiment_initializer'

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

end
