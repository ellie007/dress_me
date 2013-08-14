class User < ActiveRecord::Base

  has_many :body_types
  has_many :clothings

end
