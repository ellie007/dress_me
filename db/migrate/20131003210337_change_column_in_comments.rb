class ChangeColumnInComments < ActiveRecord::Migration
  def change
    change_column :comments, :post_id, :integer
  end
end
