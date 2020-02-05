class CreateSweeps < ActiveRecord::Migration[6.0]
  def change
    create_table :sweeps do |t|
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.integer :is_winner

      t.timestamps
    end
  end
end
