class Hero < ActiveRecord::Base
  has_many :monsters

  #you could add in a helper method in battles.rb (once you create it) that matches a hero's weapon_strength against a monster's health; that would be dope!!
end
