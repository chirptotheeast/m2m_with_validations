# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Visitor.destroy_all
Beach.destroy_all
Trip.destroy_all

10.times do 
            Visitor.create(name: Faker::Superhero.name,
                           age: rand(15...60),
                           city: Faker::Address.city,
                           mermaid_descendant: [true, false].sample)
end

beaches = ['Miami Beach', 'Siesta Key', 'Myrtle Beach', 'Ocean City', 'Rehobeth Beach']


beaches.each do |beach_name|
        Beach.create(name: beach_name,
                     location: Faker::Address.city,
                     open: [true, false].sample)
end

5.times do  
       Trip.create(visitor_id: Visitor.all.sample.id, beach_id: Beach.all.sample.id)
end