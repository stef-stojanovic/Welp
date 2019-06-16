class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :username
      t.text :password_digest
      t.text :img_url
      t.integer :balance
      t.text :description
      t.timestamps
    end
  end
end
