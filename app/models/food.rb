class Food < ApplicationRecord
    has_many :ordered_foods
    has_many :orders, through: :ordered_foods
    belongs_to :restaurant
end
