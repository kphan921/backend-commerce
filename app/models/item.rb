class Item < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :users, through: :orders
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
end
