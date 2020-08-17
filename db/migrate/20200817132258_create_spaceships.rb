class CreateSpaceships < ActiveRecord::Migration[6.0]
  def change
    create_table :spaceships do |t|

      t.string :name
      t.string :country
      t.integer :price
      t.text :description
      t.integer :year_of_creation
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
