class Company < ActiveRecord::Base
  attr_accessible :address_id, :description, :email, :fax, :image, :info, :isapproved, :ispublished, :name, :owner_name, :phone, :user_id
end
