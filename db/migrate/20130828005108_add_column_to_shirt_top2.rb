class AddColumnToShirtTop2 < ActiveRecord::Migration
  def change
    add_column :shirt_tops, :outfit_id, :integer
  end
end
