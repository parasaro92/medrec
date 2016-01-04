class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :code

      t.timestamps null: false
    end
  end
end
