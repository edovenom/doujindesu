class Album < ApplicationRecord
	has_many :album_genre_joins, dependent: :destroy
	belongs_to :user
end
