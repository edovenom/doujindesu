class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, presence: true, uniqueness: true, null: false
      t.string :username, presence: true, uniqueness: true, null: false
      t.string :password_digest, null: false
      t.integer :permission_level, default: 0, null: false

      t.timestamps
    end
  end
end
