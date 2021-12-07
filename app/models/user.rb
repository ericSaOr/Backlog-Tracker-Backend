class User < ApplicationRecord
    has_secure_password
    has_many :gamecards
    has_many :games, through: :gamecards
end
