class AddColumnWinStatusToSweep < ActiveRecord::Migration[6.0]
  def change
    add_column :sweeps, :win_status, :integer
  end
end
