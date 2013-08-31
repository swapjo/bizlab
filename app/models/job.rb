class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
  belongs_to :job_category
  has_many :bookmark_jobs

  attr_accessible :company_id, :description, :expiry_date, :isapproved, :ispublished, :job_categiory_id, :meeting_address, :qualification, :title, :vacancy_count, :image

  mount_uploader :image, ImageUploader

  def self.user_related(user_id)
    if (user_id)
      where(' user_id = ? ', user_id)
    else
      nil
    end
  end

  def self.search(keyword)
    if keyword
      where(' title LIKE ?  OR description LIKE ? ', "%#{keyword}%", "%#{keyword}%")
    else
      scoped
    end
  end

end
