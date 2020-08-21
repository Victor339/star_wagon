class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :year_of_creation, :country, :price, :description, presence: true
  has_one_attached :photo
end
