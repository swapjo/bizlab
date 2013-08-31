class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id, :name

  validates_presence_of :role_id, :name

  # attr_accessible :title, :body
  belongs_to :role

  has_many :ads
  has_many :jobs
  has_many :business_items
  has_many :companies

  has_many :bookmark_jobs
  has_many :bookmark_ads
  has_many :bookmark_business_items

  before_create :set_default_role

  private
  def set_default_role
    self.role_id ||= Role.find_by_name('Normal').id
  end

end
