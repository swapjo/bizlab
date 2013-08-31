class EmergencyNumber < ActiveRecord::Base
  attr_accessible :ispublished, :name, :priority, :value  , :image

  mount_uploader :image, ImageUploader
end
