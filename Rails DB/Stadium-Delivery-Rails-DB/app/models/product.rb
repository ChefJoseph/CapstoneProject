class Product < ApplicationRecord
    has_many :orderproducts
    has_many :orders, through: :orderproducts
end
