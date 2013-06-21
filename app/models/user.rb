class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :games
end
