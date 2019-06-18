class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :orders
    has_many :customers, through: :orders
    has_many :customers, through: :reviews
    has_many :foods

    def next_id
        if (self.id + 1 == Restaurant.last.id + 1)
            next_id = Restaurant.first.id
        else next_id = self.id + 1
        end
    end
    def back_id
        if (self.id - 1 == Restaurant.first.id - 1) 
            back_id = Restaurant.last.id
        else back_id = self.id - 1
        end
    end
end
