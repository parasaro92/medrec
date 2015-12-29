class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :doc_id
      t.text :name, :text
      t.string :email,  null: false, default: ""
      t.string :gender
      t.integer :age
      t.text :bio

      t.timestamps null: false
    end

    add_index :profiles, :doc_id, unique: true
    add_index :profiles, :email, unique: true
  end
end
