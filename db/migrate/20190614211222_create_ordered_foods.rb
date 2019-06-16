class CreateOrderedFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :ordered_foods do |t|
      t.integer :food_id
      t.integer :order_id
      t.timestamps
    end
  end
end
