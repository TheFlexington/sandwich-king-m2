class Sandwich < ApplicationRecord
    has_many :users, through: :user_sandwiches
end
