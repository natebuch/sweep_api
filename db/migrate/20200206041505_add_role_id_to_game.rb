class AddRoleIdToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :role_id, foreign_key: {to_table: :teams}
  end
end
