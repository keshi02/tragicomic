class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 655_35 }

  belongs_to :user
end
