class Spaceship < ApplicationRecord
  belongs_to :users
  has_many :bookings
  validates :name, :year_of_creation, :country, :price, :description, presence: true
end
