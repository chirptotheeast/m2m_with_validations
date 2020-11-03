class Beach < ApplicationRecord

    has_many :trips
    has_many :visitors, through: :trips

end
