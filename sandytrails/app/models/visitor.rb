class Visitor < ApplicationRecord

    has_many :trips
    has_many :beaches, through: :trips
end
