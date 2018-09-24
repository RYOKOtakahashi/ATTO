class ChangeDatatypeItemQuantityOfItems < ActiveRecord::Migration[5.2]
  def change
  	change_column :items, :item_quantity, :float
  end
end
