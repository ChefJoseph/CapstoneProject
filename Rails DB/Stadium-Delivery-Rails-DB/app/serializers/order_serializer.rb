class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :total_price
  has_many :products
end
