class Album < ApplicationRecord
	belongs_to :user

	include PgSearch
	pg_search_scope :search, against: [:title,:album_code],
		using: {tsearch: {dictionary: "english"}}

	def self.text_search(query)
		search(query)
	end
end
