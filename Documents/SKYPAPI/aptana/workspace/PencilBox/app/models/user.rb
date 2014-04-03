class User < ActiveRecord::Base
  validates :userid, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true 
  has_secure_password
end
