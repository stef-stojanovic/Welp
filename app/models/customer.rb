class Customer < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
    has_many :ordered_foods, through: :orders
    has_many :restaurants, through: :orders
    has_many :restaurants, through: :reviews
    has_secure_password

    validates :username, uniqueness: true

    def increment
        if self.id == Customer.last.id
            next_id = Customer.first.id
        else
            next_id = self.id + 1
        end
    end

    def decrement
        if self.id == Customer.first.id
            previous_id = Customer.last.id
        else
            previous_id = self.id - 1
        end
    end

    def total_orders
        price_arr = self.orders.map {|order|order.price}
        price_arr.sum
    end
    

end
