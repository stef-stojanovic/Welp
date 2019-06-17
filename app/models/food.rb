class Food < ApplicationRecord
    has_many :menu_items, dependent: :destroy
    has_many :restaurants, through: :menu_items
    has_many :ordered_foods, dependent: :destroy
    has_many :orders, through: :ordered_foods
end
