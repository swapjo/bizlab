class CityService < ActiveRecord::Base
  attr_accessible :city_service_category_id, :description, :image, :ispublished, :title
end
