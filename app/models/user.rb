class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence:true, length: { minimum: 10 }
  has_secure_password
  has_many :posts
end
