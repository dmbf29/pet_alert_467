puts 'Creating pets....'
50.times do
  Pet.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    date: Date.today - rand(1..10)
  )
end
puts "...Created #{Pet.count} pets"
