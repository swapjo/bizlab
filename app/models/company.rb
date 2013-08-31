class Company < ActiveRecord::Base
  belongs_to :user
  has_many :ads
  has_many :addresses
  has_many :business_items

  attr_accessible :description, :email, :fax, :info, :isapproved, :ispublished, :name, :owner_name, :phone, :user_id , :image, :address_id

  mount_uploader :image, ImageUploader

  def self.user_related(user_id)
    if (user_id)
    where(' user_id = ? ', user_id)
    else
      nil
    end
  end

  def self.search(keyword)
    if (keyword)
      where(' name LIKE ? ',  "%#{keyword}%")
    else
      nil
    end
  end

end
