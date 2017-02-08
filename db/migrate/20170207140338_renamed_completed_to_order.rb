class RenamedCompletedToOrder < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :complete, :completed
  end
end
