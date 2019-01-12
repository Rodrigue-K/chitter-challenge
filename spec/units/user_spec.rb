equire 'data_mapper'
require 'dm-validations'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String, :unique => true,
    :messages => {
      :is_unique => "We already have this email.",
    }
  property :email, String, :unique => true,
     :messages => {
        :is_unique => "We already have this username.",
      }
  property :password, BCryptHash

end
