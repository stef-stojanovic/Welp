class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
        t.integer :restaurant_id
        t.integer :customer_id
        t.text :subject
        t.text :content
        t.integer :rating
      t.timestamps
    end
  end
end
