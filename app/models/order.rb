class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :restaurant
    has_many :ordered_foods, dependent: :destroy
    has_many :foods, through: :ordered_foods

    def increment
        if self.id == Order.last.id
            next_id = Order.first.id
        else
            next_id = self.id + 1
        end
    end

    def decrement
        if self.id == Order.first.id
            previous_id = Order.last.id
        else
            previous_id = self.id - 1
        end
    end
end
