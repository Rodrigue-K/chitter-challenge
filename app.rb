require 'pry'
require 'sinatra/base'
require './config/data_mapper'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end
end
