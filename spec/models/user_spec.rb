require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "should save a new user when all 5 required fields are filled in" do
      @user = User.new(first_name: "Sally", last_name: "Hunter", email: "sallyhunter@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")

      expect(@user).to be_valid
    end 

    it "should throw a useful error when first name field is empty" do
      @user = User.new(first_name: nil, last_name: "Hunter", email: "sallyhunter@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("First name can't be blank")
    end 

    it "should throw a useful error when last name field is empty" do
      @user = User.new(first_name: "Sally", last_name: nil, email: "sallyhunter@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end  

    it "should throw a useful error when email field is empty" do
      @user = User.new(first_name: "Sally", last_name: "Hunter", email: nil, password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("Email can't be blank")
    end 

    it "should have a unique email address" do
      @user1 = User.create!(first_name: "Sally", last_name: "Hunter", email: "shunter@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user1).to be_valid

      @user2 = User.new(first_name: "Sam", last_name: "Hunter", email: "shunter@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user2).to_not be_valid
    end 

    it "should have a unique email address that is not case sensitive" do
      @user1 = User.create!(first_name: "Sally", last_name: "Hunter", email: "shunter@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user1).to be_valid

      @user2 = User.new(first_name: "Sam", last_name: "Hunter", email: "SHUNTER@gmail.com", password: "happybirthday123", password_confirmation: "happybirthday123")
      expect(@user2).to_not be_valid
    end 
    
    
    it "should throw a useful error when the password field is empty" do
      @user = User.new(first_name: "Sally", last_name: "Hunter", email: "sallyhunter@gmail.com", password: nil, password_confirmation: "happybirthday123")
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("Password can't be blank")
    end 
    
    it "should throw a useful error when the password confirmation field is empty" do
      @user = User.new(first_name: "Sally", last_name: "Hunter", email: "sallyhunter@gmail.com", password: "happybirthday123", password_confirmation: nil)
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("Password confirmation can't be blank")
    end 

    it "should throw a useful error when the password and password confirmation fields do not match" do
      @user = User.new(first_name: "Sally", last_name: "Hunter", email: "sallyhunter@gmail.com", password: "happybirthday", password_confirmation: "happybirthday123")
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end 

    it "should throw a useful error when the password is not long enough" do
      @user = User.new(first_name: "Sally", last_name: "Hunter", email: "sallyhunter@gmail.com", password: "happy", password_confirmation: "happy")
      expect(@user).to_not be_valid

      expect(@user.errors.full_messages).to include("Password must be at least 8 characters.")
    end 

  end
   
end
