class AddRoleToPlayers < ActiveRecord::Migration[8.0]
  def change
    add_column :players, :role, :integer, default: 0
  end
end
