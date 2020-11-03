class Trip < ApplicationRecord

    belongs_to :beach
    belongs_to :visitor

    validates :visitor_id, presence: true
    validates :beach_id, presence: true
end
