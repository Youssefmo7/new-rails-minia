class User < ApplicationRecord
  validates :name, :DOB, :email, :phone_number, :address, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  has_many :posts, foreign_key: 'creator_id'
end
