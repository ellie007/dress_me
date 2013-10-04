class AddUserColumnToAllTables < ActiveRecord::Migration
  def change
    add_column :shirt_tops, :user_id, :integer
    add_column :pants, :user_id, :integer
    add_column :shoes, :user_id, :integer
    add_column :outfits, :user_id, :integer
  end
end
