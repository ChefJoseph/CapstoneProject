class CreateOrderproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :orderproducts do |t|
      t.string :order_id
      t.string :product_id

      t.timestamps
    end
  end
end
