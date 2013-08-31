class JobCategory < ActiveRecord::Base
  has_many :jobs

  attr_accessible :description, :introtext, :ispublished, :name

  def get_child_categories
    JobCategory.where("parent_category_id = ?", "#{id}").limit(3)
  end

  def get_all_child_categories
    JobCategory.where("parent_category_id = ?", "#{id}")
  end

end
