class Genre < ApplicationRecord
	has_many :album_genre_joins, dependent: :destroy
end
