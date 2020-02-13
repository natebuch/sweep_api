class ChangeColumnNameRoleId < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :role_id_id, :role_id
  end
end
