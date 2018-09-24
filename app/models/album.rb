class Album < ApplicationRecord
	belongs_to :user
	validates :title, :cover_link, :album_code, :artist, :preview_link, presence: true

	include PgSearch
	pg_search_scope :search, against: [:title,:album_code], using: {tsearch: {dictionary: "english"}}

	def self.text_search(query)
		search(query)
	end

	def self.standardize_album_code(code)
		code.gsub!(/\W/,'')
		code.length.times do |i|
			code[i] = code[i].capitalize
		end
		return code
	end

end
