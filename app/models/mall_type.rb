class MallType < ActiveRecord::Base
  has_many :shopping_malls

  attr_accessible :description, :introtext, :ispublished, :name
end
