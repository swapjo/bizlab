class CityServiceCategory < ActiveRecord::Base
  has_many :city_services
  attr_accessible :description, :introtext, :ispublished, :name
end
