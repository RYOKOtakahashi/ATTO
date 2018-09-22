class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

    	t.integer  :user_id, null: false
    	t.text  :item_name, null: false
    	t.index :item_name
    	t.integer  :item_quantity, default: 1
			t.integer  :price
    	t.integer  :weight
    	t.text  :item_memo_one
    	t.datetime  :deadline
    	t.string  :unit
    	t.string  :category
    	t.string  :subcategory
    	t.text  :item_image_id
    	t.datetime  :notice_day
    	t.string  :author
    	t.string  :maker
    	t.string  :color
    	t.string  :size
    	t.string  :use_place
    	t.string  :purchase_place
    	t.text  :item_memo_two
      t.timestamps
    end
  end
end
