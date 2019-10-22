class User < ApplicationRecord
    has_many :user_sandwiches
    has_many :sandwiches, through: :user_sandwiches
end
