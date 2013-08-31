class Ad < ActiveRecord::Base
  attr_accessible :ad_category_id, :ad_position_id, :ad_type_id, :address_id, :company_id, :description, :expiry_date, :image, :isapproved, :ispublished, :price, :shopping_mall_id, :title, :user_id
end
