class BookmarkBusinessItem < ActiveRecord::Base
  attr_accessible :business_item_id, :user_id
  has_many :business_items
end
