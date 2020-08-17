class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|

      t.references :spaceship, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rating
      t.text :review
      t.date :departure_date
      t.date :arrival_date
      t.string :destination
      t.integer :total_price
      t.timestamps
    end
  end
end
