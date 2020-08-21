class AddAloneToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :alone, :boolean
  end
end
