class AddPriceUnitToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :price_unit, :string
  end
end
