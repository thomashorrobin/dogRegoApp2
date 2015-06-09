# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Breed.create([{ BreedName: 'Poodle' },{ BreedName: 'Bulldog' },{ BreedName: 'Labrador Retriever' },{ BreedName: 'Golden Retriever' },{ BreedName: 'German Shepherd' },{ BreedName: 'Yorkshire Terrier' },{ BreedName: 'Beagle' },{ BreedName: 'Boxer' },{ BreedName: 'Rottweiler' },{ BreedName: 'Chihuahua' }])
PricePlan.create([{ months: 3, price: 25 },{ months: 6, price: 65 },{ months: 12, price: 85 }])
will = Owner.create( Name: "William Fussey", PostalAddress: "123 Fake St" )
trev = Dog.create( Name: "Trev", owner: will, Birthday: Time.now, breed: Breed.first )
barry = Dog.create( Name: "Barry", owner: will, Birthday: Time.now, breed: Breed.first )
sarah = Owner.create( Name: "Sarah Duncan", PostalAddress: "77 Northland Rd" )
louis = Dog.create( Name: "Louis", owner: sarah, Birthday: Time.now, breed: Breed.first )
Rego.create( RegoLength: 3, StartDate: Time.now, EndDate: Time.now + 3 * 4 * 7 * 24 * 60 * 60, dog: trev, price_plan: PricePlan.first )
Rego.create( RegoLength: 6, StartDate: Time.now, EndDate: Time.now + 6 * 4 * 7 * 24 * 60 * 60, dog: barry, price_plan: PricePlan.first )
Rego.create( RegoLength: 12, StartDate: Time.now, EndDate: Time.now + 12 * 4 * 7 * 24 * 60 * 60, dog: louis, price_plan: PricePlan.first )