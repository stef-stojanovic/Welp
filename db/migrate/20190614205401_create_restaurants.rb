class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.text :street_address
      t.integer :zip
      t.string :phone_number
      t.integer :rating
      t.string :description
      t.string :restaurant_type
      t.text :img_url
      t.timestamps
    end
  end
end
