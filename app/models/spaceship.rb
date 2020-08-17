class Spaceship < ApplicationRecord
  has_many :users
  has_many :bookings
  validates :name, :year_of_creation, :country, :price, :description, presence: true
end
