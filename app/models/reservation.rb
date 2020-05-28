class Reservation < ApplicationRecord
  belongs_to :hotel
  validates :number_of_people,
    presence: true,
    numericality: :only_integer
end
