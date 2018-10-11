class ChangeItemQuantityToItems < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :items, :item_quantity, nil
  end
end
