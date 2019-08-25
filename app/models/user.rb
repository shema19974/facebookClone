class User < ApplicationRecord
  has_many :posts
  validates :firstname, presence: true, length: {maximum: 30}
  validates :lastname, presence: true, length: {maximum: 30}
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: {minimum:8}
  has_secure_password
end
