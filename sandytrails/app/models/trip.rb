class Trip < ApplicationRecord

    belongs_to :beach
    belongs_to :visitor
end
