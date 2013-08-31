class BusinessItem < ActiveRecord::Base
  belongs_to :business_item_category
  belongs_to :company
  belongs_to :shopping_mall
  belongs_to :address
  belongs_to :user
  has_many :bookmark_business_items

  attr_accessible :address_id, :business_item_category_id, :company_id, :expiry_date, :isapproved, :ispublished, :shopping_mall_id, :title, :image

  mount_uploader :image, ImageUploader

  def self.search(keyword)
    if keyword
      where(' title LIKE ? ', "%#{keyword}%")
    else
      scoped
    end
  end

  def self.user_related(user_id)
    if (user_id)
      where(' user_id = ? ', user_id)
    else
      nil
    end
  end

end
