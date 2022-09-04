class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :sales_tax, :fees, :tips, :total_price, :order_number
end
