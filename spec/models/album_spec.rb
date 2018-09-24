require 'rails_helper'

RSpec.describe Album, type: :model do

  # user_detail1 = {email: "kampar@ipoh.com", name: "jumgleman", password:"345"}
  # user_detail2 = {email: "megawatt@gmail.com", name: "tiger", password:"345"}
  # new_user1 = User.new(user_detail1).save
  # new_user2 = User.new(user_detail2).save


  context 'validation tests' do

  	it 'ensures cover image presence' do
  		album = Album.new({title: "Vibrant Dancefloor", album_code: "FS0003", artist: "Frozen Starfall", preview_link: "https://www.youtube.com/embed/o0_BDhvrKPQ", user_id: 3}).save
  		expect(album).to eq(false)
  	end

  	it 'ensures title presence' do
  		album = Album.new({album_code: "LEM0008", artist: "Logical Emotion", preview_link: "https://www.youtube.com/embed/o0_BDhvrKPQ", user_id: 3, cover_link: "https://en.touhouwiki.net/images/f/f9/ANCD-0019.jpg"}).save
  		expect(album).to eq(false)
  	end

  	it 'ensures album code presence' do
  		album = Album.new({title: "Logistic Function", artist: "Logical Emotion", preview_link: "https://www.youtube.com/embed/o0_BDhvrKPQ", user_id: 3, cover_link: "https://en.touhouwiki.net/images/f/f9/ANCD-0019.jpg"}).save
  		expect(album).to eq(false)
  	end

  	it 'ensures artist presence' do
  		album = Album.new({title: "Logistic Function", album_code: "LEM0008", preview_link: "https://www.youtube.com/embed/o0_BDhvrKPQ", user_id: 3, cover_link: "https://en.touhouwiki.net/images/f/f9/ANCD-0019.jpg"}).save
  		expect(album).to eq(false)
  	end

  	it 'ensures preview_link presence' do
  		album = Album.new({title: "Logistic Function", album_code: "LEM0008", artist: "Logical Emotion", user_id: 3, cover_link: "https://en.touhouwiki.net/images/f/f9/ANCD-0019.jpg"}).save
  		expect(album).to eq(false)
  	end

  	it 'should save successfully' do
	  	album = Album.new({title: "Logistic", album_code: "LEM1", artist: "Logical", preview_link: "hello.mp3", cover_link: "hello.jpg", user_id: 3}).save
  		expect(album).to eq(true)
  	end

  end

  context 'association tests' do
 
  	it "albums belongs to user" do
      album = Album.reflect_on_association(:user)
      expect(album.macro).to eq(:belongs_to)
    end

  end

  context 'Method Test' do

    it "standardize all album code to capital and alphanumeric only" do
      album_code1 = "a-c-v-243-2-b"
      album_code2 = "24 3"
      album_code3 = "a-cvaa"
      album_code4 = "AL43"
      expect(Album.standardize_album_code(album_code1)).to eq("ACV2432B")
      expect(Album.standardize_album_code(album_code2)).to eq("243")
      expect(Album.standardize_album_code(album_code3)).to eq("ACVAA")
      expect(Album.standardize_album_code(album_code4)).to eq("AL43")
    end

  end
end
