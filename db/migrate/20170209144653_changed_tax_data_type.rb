class ChangedTaxDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :tax, :decimal, precision:9, scale:2
  end
end
