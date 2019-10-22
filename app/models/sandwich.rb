class Sandwich < ApplicationRecord
    has_many :user_sandwiches
    has_many :users, through: :user_sandwiches
end
