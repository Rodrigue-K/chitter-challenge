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
        :is_unique => "We already have this username.",
      }
  property :password, BCryptHash

  def self.authenticate(username, password)
    user = first(username: username)
    return nil unless user

    if user.password == password
      user
    else
      nil
    end
  end
end
