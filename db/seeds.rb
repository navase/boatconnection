# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Boat.destroy_all
boats = Boat.create([{ name: 'Margot', boat_type: 'Yacht', capacity: 6, drive: 'motor', image: 'margot.jpg' },
  { name: 'Iris', boat_type: 'Speed boat', capacity: 4, drive: 'motor', image: 'iris.jpg' },
  { name: 'Chiel', boat_type: 'Sail boat', capacity: 3, drive: 'wind', image: 'chiel.jpg' },
  { name: 'Maurice', boat_type: 'Jet ski', capacity: 2, drive: 'motor', image: 'maurice.jpg' }
  ])

Reservation.destroy_all
reservations = Reservation.create([
  { start_date: DateTime.new(2016, 3, 5), end_date: DateTime.new(2016, 3, 3), number_of_persons: 4 },
  { start_date: DateTime.new(2016, 3, 8), end_date: DateTime.new(2016, 3, 5), number_of_persons: 2 },
  { start_date: DateTime.new(2016, 2, 28), end_date: DateTime.new(2016, 3, 3), number_of_persons: 6 },
  { start_date: DateTime.new(2016, 3, 5), end_date: DateTime.new(2016, 3, 12), number_of_persons: 3 },
  ])
