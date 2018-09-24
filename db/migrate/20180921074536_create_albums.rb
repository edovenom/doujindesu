class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :cover_link, presence: true, null: false
      t.string :title, presence: true, null: false
      t.string :album_code, presence: true, null: false
      t.string :artist, presence: true, null: false
      t.string :preview_link, presence: true, null: false
      
      t.timestamps
    end

    add_reference :albums, :user

  end
end
