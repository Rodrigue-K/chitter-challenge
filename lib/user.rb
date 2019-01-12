require 'data_mapper'
require 'dm-validations'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String, :unique => true,
    :messages => {
      :is_unique => "We already have this email.",
    }
  property :username, String, :unique => true,
      :messages => {
        :is_unique => "We already have this email.",
      }
  property :password, BCryptHash

end
