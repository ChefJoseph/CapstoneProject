class OrderSerializer < ActiveModel::Serializer
  attributes :user_id, :product_id, :total_price
  has_many :orderproducts
end
