class Outfit < ActiveRecord::Base
  belongs_to :shirt_top
  belongs_to :pant
  belongs_to :shoe

 #  validates :shirt_top_id, uniqueness: { scope: :pant_id, scope: :shoe_id,
  #  message:"You already have saved that as a possible combination."}
end
