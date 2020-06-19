class Prefecture < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :hotels

  def review_average
    reviews.average(:rating).floor(2) if reviews.present?
  end
end
