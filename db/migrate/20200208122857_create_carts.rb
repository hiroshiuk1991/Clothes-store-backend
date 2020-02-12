class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.integer :item_id
      t.string :item_name

      t.timestamps
    end
  end
end
