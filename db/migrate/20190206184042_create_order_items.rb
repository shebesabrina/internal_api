class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order
      t.references :item
      t.integer :item_price
      t.integer :quantity

      t.timestamps
    end
  end
end
