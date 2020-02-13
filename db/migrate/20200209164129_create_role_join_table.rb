class CreateRoleJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.references :player, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
    end
  end
end
