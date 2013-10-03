class Post < ActiveRecord::Base

  has_many :comments, :dependent => :destroy

  has_attached_file :blog_post_pics, :default_url => ""

  acts_as_taggable
  acts_as_taggable_on :posts

end
