class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.integer :age
      t.string :bloodgroop
      t.string :gender
      t.text :address
      t.string :city
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
