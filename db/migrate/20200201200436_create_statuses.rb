class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :description
      t.integer :rank

      t.timestamps
    end
  end
end
