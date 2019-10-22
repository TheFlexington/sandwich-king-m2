class UserSandwich < ApplicationRecord
    has_many :sandwiches
    has_many :users
end
