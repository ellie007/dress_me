class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.string :name
      t.string :product_id
      t.string :color
      t.string :size
      t.string :image_url
    end
  end
end
