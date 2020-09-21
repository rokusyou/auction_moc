class AddColumnToItems < ActiveRecord::Migration[6.0]
  def change
    change_table :items, bulk: true do |t|
      t.integer :user_id
    end
  end
end
