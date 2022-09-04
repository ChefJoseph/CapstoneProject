class ProductSerializer < ActiveModel::Serializer
  attributes :id, :category, :product_name, :product_image_url, :description, :price
end
