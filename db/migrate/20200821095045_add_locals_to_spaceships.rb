class AddLocalsToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :locals, :boolean
  end
end
