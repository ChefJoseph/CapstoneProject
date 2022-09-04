class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :product_name
      t.string :product_image_url
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
