class AdPosition < ActiveRecord::Base
  has_many :ads

  attr_accessible :ispublished, :name
end
