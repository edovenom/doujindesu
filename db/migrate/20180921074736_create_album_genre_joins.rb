class CreateAlbumGenreJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :album_genre_joins do |t|
      t.timestamps
    end
    add_reference :album_genre_joins, :album
    add_reference :album_genre_joins, :genre
  end
end
