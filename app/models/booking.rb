class Booking < ApplicationRecord
  DESTINATIONS = ["Mars", "Saturne", "Venus", "Moon", "Sun", "Uranus"]
  belongs_to :user
  belongs_to :spaceship
 #validates :destination, inclusion: { in: DESTINATIONS }
  validates :departure_date, :arrival_date, presence: true
  after_validation :calculate_price

  private

  def calculate_price
    self.total_price = (self.arrival_date - self.departure_date) * self.spaceship.price
  end
end


