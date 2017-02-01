class RemovedNameAttributeToImage < ActiveRecord::Migration[5.0]
  def change
  	remove_column :images, :name, :string
  end
end
