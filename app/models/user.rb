class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :items, through: :orders

    has_secure_password

    validates :username, :password, presence: true
    validates :username, uniqueness: { case_sensitive: false }

end
