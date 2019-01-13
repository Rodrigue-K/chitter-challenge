require 'data_mapper'
require 'dm-validations'
require 'dm-timestamps'
require 'sentimental'

class Peep
  include DataMapper::Resource

  property :id, Serial
  property :post, String
  property :created_on, Date
  property :created_at, DateTime
  property :get_sentiment, String

  validates_length_of :post, :within => 7..40

  def get_sentiment
  $analyser.sentiment(:post)
  end


end
