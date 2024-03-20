class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user_id, uniqueness: { scope: :post_id }
  enum reaction_flag: { no_staff: 0, tragedy: 1, comedy: 2 }
end
