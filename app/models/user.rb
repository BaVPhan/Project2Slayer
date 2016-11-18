class User < ActiveRecord::Base
  has_many :heros
  has_many :monsters  
end
