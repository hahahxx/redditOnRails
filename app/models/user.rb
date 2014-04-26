class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
    					uniqueness: { case_sensitive: false }
  has_many :links
  has_many :comments
  has_many :votes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
