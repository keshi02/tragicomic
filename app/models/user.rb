class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :name, presence: true, length: { maximum: 255 }
  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }, on: :create
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }, on: :create
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }, on: :create
  validates :email, presence: true, uniqueness: true
end

