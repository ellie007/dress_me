class AddColumnToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :date, :string
  end
end
