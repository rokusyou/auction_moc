class AddImageColumnToItems < ActiveRecord::Migration[6.0]
  def change
    change_table :items, bulk: true do |t|
      t.string :image_path
    end
  end
end
