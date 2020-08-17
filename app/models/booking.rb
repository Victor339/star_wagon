class Booking < ApplicationRecord
  DESTINATIONS = ["Mars", "Saturne", "Venus", "Moon", "Sun", "Uranus"]
  belongs_to :user
  belongs_to :spaceship

  validates :rating, inclusion: { in: 0..5 }
  validates :destination, inclusion: { in: DESTINATIONS }
  validates :departure_date, :arrival_date, presence: true
end
