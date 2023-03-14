class User < ApplicationRecord

  has_secure_password
  

  def self.authenticate_with_credentials (email, password) 
    trimmed_email = email.lstrip.rstrip
    @user = User.find_by_email(trimmed_email)

    if @user && @user.authenticate(password)
      @user
    end
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be in the format example@example.com." }
  validates :password, presence: true, confirmation: true, length: { minimum: 8 , too_short: "must be at least %{count} characters."}
  validates :password_confirmation, presence: true
  validates :password_digest, presence: true
end
