class AddDestinationToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :destination, :string
  end
end
