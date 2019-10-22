class UserSandwich < ApplicationRecord
    belongs_to :sandwich
    belongs_to :user
end
