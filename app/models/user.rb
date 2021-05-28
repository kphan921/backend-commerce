class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :items, through: :orders
    has_many :reviews, dependent: :destroy
    has_many :items, through: :reviews

    has_secure_password

    validates :username, :password, presence: true
    validates :password, confirmation: true
    # validates_confirmation_of :password
    validates :username, uniqueness: { case_sensitive: false }
end
