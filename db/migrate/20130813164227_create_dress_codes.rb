class CreateDressCodes < ActiveRecord::Migration
  def change
    create_table :dress_codes do |t|
      t.string :type
    end
  end
end
