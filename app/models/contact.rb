class Contact < ApplicationRecord
  validates :name,
    presence: true,
    length: { maximum: 16 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    presence: true,
    format: { with: VALID_EMAIL_REGEX }
  validates :body,
    presence: true
end
