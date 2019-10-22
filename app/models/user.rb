class User < ApplicationRecord
    has_many :sandwiches, through: :user_sandwiches
end
