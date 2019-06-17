class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :orders
    has_many :customers, through: :orders
    has_many :menu_items
    has_many :foods, through: :menu_items
end
