class Visitor < ApplicationRecord

    has_many :trips
    has_many :beaches, through: :trips

    validates :name, presence: true
    validates :age, numericality: {greater_than_or_equal_to: 3 }
end
