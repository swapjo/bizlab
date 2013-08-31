class BookmarkAd < ActiveRecord::Base
  attr_accessible :ad_id, :user_id
  has_many :ads
  has_many :users

end
