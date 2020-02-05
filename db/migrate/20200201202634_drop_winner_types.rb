class DropWinnerTypes < ActiveRecord::Migration[6.0]
  def change
    drop_table :winner_types
  end
end
