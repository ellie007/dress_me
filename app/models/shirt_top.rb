class ShirtTop < ActiveRecord::Base
  belongs_to :user
  belongs_to :outfit

  #belongs_to :outfit, :through => :combinations
  #belongs_to :combination
end
