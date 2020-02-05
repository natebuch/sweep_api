class CreateSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :selections do |t|
      t.references :question, null: false, foreign_key: true
      t.string :description
      t.string :text
      t.integer :status

      t.timestamps
    end
  end
end
