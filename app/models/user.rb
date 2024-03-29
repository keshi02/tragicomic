class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :posts, dependent: :destroy
  has_many :reactions, dependent: :destroy

  validates :name, presence: true, length: { maximum: 15 }
  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }, on: :create
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }, on: :create
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }, on: :create
  validates :email, presence: true, uniqueness: true

  def own?(object)
    object.user_id == id
  end
end
