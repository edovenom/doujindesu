require 'rails_helper'

RSpec.feature "Users", type: :feature do

	context 'User sign up' do 

	 	scenario "Successful" do
	      	visit signup_path
			  within("#new_user") do
				fill_in 'user[email]', with: 'tiger.shark@zoo.com'
		        fill_in 'user[password]', with: 'hello'
		        fill_in 'user[password_confirmation]', with: 'hello'
	  		  end
	      	click_button 'Sign Up'
	      	expect(page).to have_content 'Tiger Shark'
	  	end

	  	scenario "Mismatch password" do
	  		visit signup_path
			  within("#new_user") do
				fill_in 'user[email]', with: 'tiger.shark@zoo.com'
		        fill_in 'user[password]', with: '12'
		        fill_in 'user[password_confirmation]', with: 'hello'
	  		  end
	      	click_button 'Sign Up'
	      	expect(page).to have_content "Sign up failed"
	  	end	

	  	scenario "Blank email" do
	  		visit signup_path
			  within("#new_user") do
				fill_in 'user[email]', with: ''
		        fill_in 'user[password]', with: '12'
		        fill_in 'user[password_confirmation]', with: 'hello'
	  		  end
	      	click_button 'Sign Up'
	      	expect(page).to have_content "Sign up failed"
	  	end	

	  	scenario "No password" do
	  		visit signup_path
			  within("#new_user") do
				fill_in 'user[email]', with: 'popcorn42@example.com'
		        fill_in 'user[password]', with: ''
		        fill_in 'user[password_confirmation]', with: ''
	  		  end
	      	click_button 'Sign Up'
	      	expect(page).to have_content "Sign up failed"
	  	end	

	  	scenario "Repeating email" do
	  		visit signup_path
			  within("#new_user") do
				fill_in 'user[email]', with: 'tiger.shark@zoo.com'
		        fill_in 'user[password]', with: ''
		        fill_in 'user[password_confirmation]', with: ''
	  		  end
	      	click_button 'Sign Up'
	      	expect(page).to have_content "Sign up failed"
	  	end
	end
end
