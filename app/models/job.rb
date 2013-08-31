class Job < ActiveRecord::Base
  attr_accessible :company_id, :description, :expiry_date, :image, :isapproved, :ispublished, :job_categiory_id, :meeting_address, :qualification, :title, :user_id, :vacancy_count
end
