require 'rails_helper'

RSpec.feature "Albums", type: :feature do
	context 'Add new albums' do 

		scenario "Successful" do
			visit login_path
			within(".container") do
				fill_in 'email', with: 'darkwoodpresents@gmail.com'
			    fill_in 'password', with: '2345'
			end
			click_button 'Log In'

			visit album_new_path
		    within("#new_album") do
				fill_in 'album[title]', with: 'popcorn42'
			    fill_in 'album[cover_link]', with: 'www.example.com'
			    fill_in 'album[preview_link]', with: 'hello.com'
			    fill_in 'album[artist]', with: 'popcorn Master'
			    fill_in 'album[album_code]', with: 'p-0-MoQ!'
			end
			click_button 'Add album'
			expect(page).to have_content "P0MOQ"
		end	


		scenario "Submission without title (fail)" do
			visit login_path
			within(".container") do
				fill_in 'email', with: 'darkwoodpresents@gmail.com'
			    fill_in 'password', with: '2345'
			end
			click_button 'Log In'

			visit album_new_path
		    within("#new_album") do
			    fill_in 'album[cover_link]', with: 'www.example.com'
			    fill_in 'album[preview_link]', with: 'hello.com'
			    fill_in 'album[artist]', with: 'popcorn Master'
			    fill_in 'album[album_code]', with: 'Album submission failed. Please try again'
			end
			click_button 'Add album'
			expect(page).to have_content "Album submission failed. Please try again"
		end	

		scenario "Submission without cover_link (fail)" do
			visit login_path
			within(".container") do
				fill_in 'email', with: 'darkwoodpresents@gmail.com'
			    fill_in 'password', with: '2345'
			end
			click_button 'Log In'

			visit album_new_path
		    within("#new_album") do
				fill_in 'album[title]', with: 'popcorn42'
			    fill_in 'album[preview_link]', with: 'hello.com'
			    fill_in 'album[artist]', with: 'popcorn Master'
			    fill_in 'album[album_code]', with: 'Album submission failed. Please try again'
			end
			click_button 'Add album'
			expect(page).to have_content "Album submission failed. Please try again"
		end	

		scenario "Submission without preview_link (fail)" do
			visit login_path
			within(".container") do
				fill_in 'email', with: 'darkwoodpresents@gmail.com'
			    fill_in 'password', with: '2345'
			end
			click_button 'Log In'

			visit album_new_path
		    within("#new_album") do
				fill_in 'album[title]', with: 'popcorn42'
			    fill_in 'album[cover_link]', with: 'www.example.com'
			    fill_in 'album[artist]', with: 'popcorn Master'
			    fill_in 'album[album_code]', with: 'p-0-MoQ!'
			end
			click_button 'Add album'
			expect(page).to have_content "Album submission failed. Please try again"
		end

		scenario "Submission without artist (fail)" do
			visit login_path
			within(".container") do
				fill_in 'email', with: 'darkwoodpresents@gmail.com'
			    fill_in 'password', with: '2345'
			end
			click_button 'Log In'

			visit album_new_path
		    within("#new_album") do
				fill_in 'album[title]', with: 'popcorn42'
				fill_in 'album[preview_link]', with: 'hello.com'
			    fill_in 'album[cover_link]', with: 'www.example.com'
			    fill_in 'album[album_code]', with: 'p-0-MoQ!'
			end
			click_button 'Add album'
			expect(page).to have_content "Album submission failed. Please try again"
		end	

		scenario "Submission without album_code (fail)" do
			visit login_path
			within(".container") do
				fill_in 'email', with: 'darkwoodpresents@gmail.com'
			    fill_in 'password', with: '2345'
			end
			click_button 'Log In'
			
			visit album_new_path
		    within("#new_album") do
				fill_in 'album[title]', with: 'popcorn42'
				fill_in 'album[preview_link]', with: 'hello.com'
			    fill_in 'album[cover_link]', with: 'www.example.com'
			    fill_in 'album[artist]', with: 'popcorn Master'
			end
			click_button 'Add album'
			expect(page).to have_content "Album submission failed. Please try again"
		end	


	end
end
