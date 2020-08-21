class AddExploreToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :explore, :boolean
  end
end
