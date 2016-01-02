class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.integer :contact
      t.text :qualification
      t.string :gender
      t.string :bio

      t.timestamps null: false
    end

    add_index :doctors, :email, unique: true
  end
end
