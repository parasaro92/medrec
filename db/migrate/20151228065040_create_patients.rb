class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :address
      t.string :city
      t.string :bloodgroup
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
