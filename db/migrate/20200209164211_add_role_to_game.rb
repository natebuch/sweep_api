class AddRoleToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :role, foreign_key: true
  end
end
