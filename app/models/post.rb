class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 655_35 }

  belongs_to :user

  has_many :reactions, dependent: :destroy

  mount_uploader :post_image, PostImageUploader

  def tragedy_count
    reactions.where(reaction_flag: :tragedy).count
  end

  def comedy_count
    reactions.where(reaction_flag: :comedy).count
  end
end
