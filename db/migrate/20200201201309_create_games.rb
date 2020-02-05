class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :client, null: false, foreign_key: true
      t.string :description
      t.references :team, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.string :game_type
      t.string :references
      t.datetime :start

      t.timestamps
    end
  end
end
