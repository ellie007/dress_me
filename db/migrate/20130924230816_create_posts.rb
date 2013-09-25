class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :body
      t.attachment :blog_post_pics
      t.timestamps
    end
  end
end
