class User < ApplicationRecord

  has_secure_password
  

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false }
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
  validates :password_digest, presence: true
end
