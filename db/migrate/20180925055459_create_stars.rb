class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

    	t.integer  :user_id, null: false
    	t.integer  :item_id, null: false
      t.timestamps
    end
  end
end