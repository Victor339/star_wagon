class Booking < ApplicationRecord
  DESTINATIONS = ["Mars", "Saturne", "Venus", "Moon", "Sun", "Uranus"]
  belongs_to :user
  belongs_to :spaceship

  validates :destination, inclusion: { in: DESTINATIONS }
  validates :departure_date, :arrival_date, presence: true
end


