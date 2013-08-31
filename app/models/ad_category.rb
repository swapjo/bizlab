class AdCategory < ActiveRecord::Base
  attr_accessible :description, :image, :introtext, :ispublished, :name, :parent_category_id
end
