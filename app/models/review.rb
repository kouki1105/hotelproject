class Review < ApplicationRecord
  belongs_to :hotel
  belongs_to :user
  validates :title,
    presence: true,
    length: { maximum: 30 }
  validates :body,
    presence: true
end
