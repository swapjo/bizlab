class Address < ActiveRecord::Base
  attr_accessible :address_line_one, :address_line_two, :chat_code, :city, :contact_name, :country, :email, :fax, :gmaps, :google_map_code, :ispublished, :latitude, :longitude, :phone, :postal_code, :street, :user_id, :website
end
