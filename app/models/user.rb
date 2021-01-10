class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :username, uniqueness: { case_sensitive: false }, presence: true
  validates :password, length: { minimum: 6 }
end
