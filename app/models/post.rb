class Post < ActiveRecord::Base

  has_many :comments

  has_attached_file :blog_post_pics, :default_url => ""

end
