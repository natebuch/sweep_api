class ChangeGameTypeTypeOnGame < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :game_type, :integer, foreign_key: true
  end
end
