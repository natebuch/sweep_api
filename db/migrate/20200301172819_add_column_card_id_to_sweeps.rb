class AddColumnCardIdToSweeps < ActiveRecord::Migration[6.0]
  def change
    add_reference :sweeps, :card, foreign_key: true
  end
end
