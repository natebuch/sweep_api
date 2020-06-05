class RemoveColumnsFromSelections < ActiveRecord::Migration[6.0]
  def change

    remove_column :selections, :description, :text

    remove_column :selections, :status, :integer
  end
end
