class AddAwesomeToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :awesome, :boolean
  end
end
