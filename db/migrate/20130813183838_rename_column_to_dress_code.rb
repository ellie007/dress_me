class RenameColumnToDressCode < ActiveRecord::Migration
  def change
    rename_column :dress_codes, :type, :kind
  end
end
