require 'data_mapper'
require 'dm-validations'

class Peep
  include DataMapper::Resource

  property :id, Serial
  property :post, String

  validates_length_of :post, :within => 7..40
end
