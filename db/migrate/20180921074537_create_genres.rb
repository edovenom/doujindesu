class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :genre, uniqueness: true, presence: true, null: false

      t.timestamps
    end    
  end
end
