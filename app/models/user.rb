class User < ActiveRecord::Base
  has_secure_password
  has_many :products
  validates :fname, presence: true
  validates :lname, presence: true
  validates :username, presence: true, uniqueness: true
end
