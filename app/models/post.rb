class Post < ActiveRecord::Base

  has_many :comments

  #has_attached_file :blog_post_pics, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
