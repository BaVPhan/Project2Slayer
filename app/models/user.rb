class User < ActiveRecord::Base
  has_many :heros
  has_many :monsters  
  # you may not need the has_many monsters since heroes already possess monsters, i think this potentially complicates ERD
  # I like that you handrolled users and sessions! great practice
end
