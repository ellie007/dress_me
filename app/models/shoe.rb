class Shoe < ActiveRecord::Base
  belongs_to :outfit

  #belongs_to :outfit, :through => :combinations
  #belongs_to :combination
end
