class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.references :game, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.integer :field

      t.timestamps
    end
  end
end
