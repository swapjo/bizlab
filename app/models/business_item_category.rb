class BusinessItemCategory < ActiveRecord::Base
  has_many :business_items

  attr_accessible :description, :introtext, :ispublished, :name, :parent_category_id


  def get_child_categories
    BusinessItemCategory.where("parent_category_id = ?", "#{id}").limit(3)
  end

  def get_all_child_categories
    BusinessItemCategory.where("parent_category_id = ?", "#{id}")
  end

  def get_parent_category
    BusinessItemCategory.where(" id = ?", "#{parent_category_id}")
  end

  def self.search(keyword)
    if (keyword)
      where(' name LIKE ? ',  "%#{keyword}%")
    else
      nil
    end
  end


end
