class CreateShirtTops < ActiveRecord::Migration
  def change
    create_table :shirt_tops do |t|
      t.string :name
      t.string :product_id
      t.string :color
      t.string :size
    end
  end
end
