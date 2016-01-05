class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password, null: false, default: ""
      t.integer :contact
      t.text :qualification
      t.string :gender
      t.string :bio
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :doctors, :email, unique: true
  end
end
