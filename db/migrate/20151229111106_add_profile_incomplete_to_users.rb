class AddProfileIncompleteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_incomplete, :boolean, default: true
  end
end
