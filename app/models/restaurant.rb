class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :orders
    has_many :customers, through: :orders
    has_many :customers, through: :reviews
    has_many :foods
end
