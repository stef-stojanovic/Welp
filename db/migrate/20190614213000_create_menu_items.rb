class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.integer :restaurant_id
      t.integer :food_id
      t.timestamps
    end
  end
end
