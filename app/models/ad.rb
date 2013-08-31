class Ad < ActiveRecord::Base
  belongs_to :ad_category
  belongs_to :company
  belongs_to :shopping_mall
  belongs_to :address
  belongs_to :ad_position
  belongs_to :user
  has_many :bookmark_ads

  attr_accessible :title, :ad_category_id, :ad_position_id, :address_id, :company_id, :description, \
  :expiry_date, :isapproved, :ispublished, :price, :shopping_mall_id, :title, :user_id, :image

  mount_uploader :image, ImageUploader

  def self.search_similar_ads(main_ad)
    if  main_ad
      where(' ad_category_id =?  and id<> ? ', main_ad.ad_category_id, main_ad.id)
    else
      scoped
    end
  end

  def self.minprice(price)
    if price
      where(' price <= ?', "%#{price}%")
    else
      scoped
    end
  end

  def self.maxprice(price)
    if price
      where(' price >= ?', "%#{price}%")
    else
      scoped
    end
  end

  def self.search(keyword)
    if keyword
      where(' title LIKE ?  OR description LIKE ? ', "%#{keyword}%", "%#{keyword}%")
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
