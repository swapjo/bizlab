class ShoppingMall < ActiveRecord::Base
  attr_accessible :address_id, :description, :image, :ispublished, :mall_type_id, :name
end
