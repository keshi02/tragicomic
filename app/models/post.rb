class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 655_35 }

  belongs_to :user
  mount_uploader :post_image, PostImageUploader
end
