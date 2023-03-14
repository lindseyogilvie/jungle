require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "should save a new product when all 4 required fields are filled in" do
      @category = Category.new(name: "Herbs")
      @product = Product.new(name: "Mint", price_cents: 499, quantity: 24, category: @category)

      expect(@product).to be_valid
    end 

    it "should throw a useful error when name is empty" do
      @category = Category.new(name: "Herbs")
      @product = Product.new(name: nil, price_cents: 499, quantity: 24, category_id: @category)
      expect(@product).to_not be_valid

      expect(@product.errors.full_messages).to include("Name can't be blank")
    end 

    it "should throw a useful error when price is empty" do
      @category = Category.new(name: "Herbs")
      @product = Product.new(name: "Mint", price_cents: nil, quantity: 24, category_id: @category)
      expect(@product).to_not be_valid

      expect(@product.errors.full_messages).to include("Price is not a number")
    end

    it "should throw a useful error when quantity is empty" do
      @category = Category.new(name: "Herbs")
      @product = Product.new(name: "Mint", price_cents: 499, quantity: nil, category_id: @category)
      expect(@product).to_not be_valid

      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "should throw a useful error when category is empty" do
      @category = Category.new(name: "Herbs")
      @product = Product.new(name: "Mint", price_cents: 499, quantity: 24, category_id: nil)
      expect(@product).to_not be_valid

      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end
end

