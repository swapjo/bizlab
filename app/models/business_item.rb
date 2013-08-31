class BusinessItem < ActiveRecord::Base
  attr_accessible :address_id, :business_item_category_id, :company_id, :expiry_date, :image, :isapproved, :ispublished, :shopping_mall_id, :title, :user_id
end
