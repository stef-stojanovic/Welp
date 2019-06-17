class MenuItem < ApplicationRecord
    belongs_to :food
    belongs_to :restaurant
end
