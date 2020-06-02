class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :client, null: false, foreign_key: true
      t.string :description
      t.references :team, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.string :references
      t.references :game_type, null: false, goreign_key: true
      t.datetime :start

      t.timestamps
    end
  end
end
