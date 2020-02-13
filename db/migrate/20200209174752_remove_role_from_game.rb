class RemoveRoleFromGame < ActiveRecord::Migration[6.0]
  def change

    remove_column :games, :role_id, :integer
  end
end
