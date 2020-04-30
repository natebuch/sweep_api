class AddColumnToSelections < ActiveRecord::Migration[6.0]
  def change
    add_column :selections, :is_right, :boolean
  end
end
