class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.integer :shirt_top_id
      t.integer :pant_id
      t.integer :shoe_id
    end
  end
end
