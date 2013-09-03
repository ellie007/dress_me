class User < ActiveRecord::Base
  has_secure_password

  validates :email, :presence => true, :uniqueness => true

  #has_many :body_types
  #has_many :clothings

end
