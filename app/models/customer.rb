class Customer < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
    has_many :ordered_foods, through: :orders
    has_many :restaurants, through: :orders
    has_many :foods, through: :ordered_foods
end
