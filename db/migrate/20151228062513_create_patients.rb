class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|

      t.integer :patient_id
      t.text :name, :text
      t.string :address
      t.text :text
      t.string :gender
      t.integer :age

      t.timestamps null: false
    end

    add_index :patients, :patient_id, unique: true
  end
end
