class ChangeDatatypeDeadlineOfItems < ActiveRecord::Migration[5.2]
  def change
  	change_column :items, :deadline, :date
  end
end
