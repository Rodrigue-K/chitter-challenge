ENV['RACK_ENV'] ||= 'development'

require './lib/peep'
require './lib/user'
require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/chitter_#{ENV['RACK_ENV']}")

DataMapper.finalize
