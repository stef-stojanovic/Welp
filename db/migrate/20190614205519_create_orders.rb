class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
        t.integer :restaurant_id
        t.integer :customer_id
        t.integer :price
      t.timestamps
    end
  end
end
