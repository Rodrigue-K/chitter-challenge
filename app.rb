require 'pry'
require 'sinatra/base'
require './config/data_mapper'

class Chitter < Sinatra::Base

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
