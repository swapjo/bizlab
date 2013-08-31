class JobCategory < ActiveRecord::Base
  attr_accessible :description, :introtext, :ispublished, :name, :parent_category_id
end
