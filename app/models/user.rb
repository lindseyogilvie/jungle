class User < ApplicationRecord

  has_secure_password
  

  def self.authenticate_with_credentials (email, password) 
    @user = User.find_by_email(email)

    if @user && @user.authenticate(password)
      @user
    end
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false }
  validates :password, presence: true, confirmation: true, length: { minimum: 8 , too_short: "must be at least %{count} characters."}
  validates :password_confirmation, presence: true
  validates :password_digest, presence: true
end
