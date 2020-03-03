class RemoveGameFromSweep < ActiveRecord::Migration[6.0]
  def change
    remove_column :sweeps, :game_id
  end
end
