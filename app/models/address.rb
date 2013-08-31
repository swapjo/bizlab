class Address < ActiveRecord::Base
  has_many :ads
  belongs_to :company
  belongs_to :shopping_mall
  has_many :business_items
  has_many :shopping_malls

  geocoded_by :address_brief

  acts_as_gmappable

  attr_accessible :address_line_one, :address_line_two, :chat_code, :city, :company_id, :contact_name, \
  :country, :email, :fax, :google_map_code, :ispublished, :phone, :postal_code, :street, \
  :shopping_mall_id, :website, :user_id, :city, :latitude, :longitude, :address_brief, :geocode

  after_validation :geocode #, :if => :address_brief_changed?

  #before_validation_on_update :geocode_address

  def address_brief_changed?
    attrs = %w(address_line_one address_line_two street postal_code city country)
    attrs.any?{|a| send "#{a}_changed?"}
  end

  def self.user_related(user_id)
    if (user_id)
      where(' user_id = ? ', user_id)
    else
      nil
    end
  end

  def address_brief
    [ address_line_one, address_line_two, street, postal_code , city, country].compact.join(' ')
  end

  def gmaps4rails_address
    address_brief
  end

  def contact_info
    "Ph : " + phone
  end
=begin

  def geocode_address
    if !address_brief.blank?
      geo=Geokit::Geocoders::MultiGeocoder.geocode(address_brief)
      errors.add(:address_brief, "Could not Geocode address") if !geo.success
      self.latitude, self.longitude = geo.lat,geo.lng if geo.success
    end
  end

# Checks whether this object has been geocoded or not. Returns the truth
  def geocoded?
    lat? && lng?
  end
=end


end
