class User < ActiveRecord::Base
  #has_many :body_types
  #has_many :clothings

  has_secure_password

  validates :email, :presence => true, :uniqueness => true

end
