class AddColumnToShirtTop < ActiveRecord::Migration
  def change
    add_column :shirt_tops, :image_url, :string
  end
end
