class ShoppingMall < ActiveRecord::Base
  has_many :ads
  has_many :business_items
  belongs_to :mall_type
  belongs_to :address

  attr_accessible :description, :ispublished, :mall_type_id, :name, :image, :address_id

  mount_uploader :image, ImageUploader

  acts_as_gmappable

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address.street}, #{self.address.city}, #{self.address.country}"
  end

end
