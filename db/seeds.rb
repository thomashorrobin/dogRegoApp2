# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Breed.create([{ BreedName: 'Poodle' },{ BreedName: 'Bulldog' },{ BreedName: 'Labrador Retriever' },{ BreedName: 'Golden Retriever' },{ BreedName: 'German Shepherd' },{ BreedName: 'Yorkshire Terrier' },{ BreedName: 'Beagle' },{ BreedName: 'Boxer' },{ BreedName: 'Rottweiler' },{ BreedName: 'Chihuahua' }])
PricePlan.create([{ months: 3, price: 25 },{ months: 6, price: 65 },{ months: 12, price: 85 }])