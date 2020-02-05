class ChangeGameTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :references
    remove_column :games, :game_type, :integer
    add_column :games, :game_type_id, :integer, foreign_key: true
  end
end
