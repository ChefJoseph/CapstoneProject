class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :sales_tax
      t.integer :fees
      t.integer :tips
      t.integer :total_price
      t.integer :order_number

      t.timestamps
    end
  end
end
