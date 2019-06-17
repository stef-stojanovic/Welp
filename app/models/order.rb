class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :restaurant
    has_many :ordered_foods, dependent: :destroy
    has_many :foods, through: :ordered_foods
end
