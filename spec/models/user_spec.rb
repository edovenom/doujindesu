require 'rails_helper'

RSpec.describe User, type: :model do

  user_details1 = {email: "mango.jango@gmail.com", name: "mango.jango", password:"2345"}
  user_details2 = {email: "kitt@gmail.com", name: "kitt", password:"2345"}
  user_details3 = {email: "britney.spears@gmail.com", name: "wong", password:"2345"}

  context 'validation tests' do

  	it 'ensures unique email/name' do
  		user1 = User.new(user_details1).save
  		user2 = User.new(user_details1).save
  		user3 = User.new(user_details2).save
  		expect(user1).to eq(true)
  		expect(user2).to eq(false)
  		expect(user3).to eq(true)
  	end

  end

  context 'association tests' do
 
  	it "user should have many albums" do
      user = User.reflect_on_association(:albums)
      expect(user.macro).to eq(:has_many)
    end

  end

  context 'Method Test' do

    it "derive username from email using custom method" do
      user = User.new(user_details3)
      expect(User.email_to_name(user.email)).to eq("Britney Spears")
    end

  end
end
