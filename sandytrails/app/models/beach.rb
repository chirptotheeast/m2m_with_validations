class Beach < ApplicationRecord

    has_many :trips
    has_many :visitors, through: :trips

    validates :name, presence: true
    validates :location, length: {maximum: 10}
    validates :boolean_field_name, exclusion: { in: [nil]}

    
end



# person = Person.new
# person.valid? # => false
# person.errors.messages
#  # => {:name=>["can't be blank", "is too short (minimum is 3 characters)"]}