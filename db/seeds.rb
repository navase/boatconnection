# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

boats = Boat.create([{ name: 'Margot', boat_type: 'Yacht', capacity: 6, drive: 'motor', image: 'margot.jpg' },
  { name: 'Iris', boat_type: 'Speed boat', capacity: 4, drive: 'motor', image: 'iris.jpg' },
  { name: 'Chiel', boat_type: 'Sail boat', capacity: 3, drive: 'wind', image: 'chiel.jpg' },
  { name: 'Maurice', boat_type: 'Jet ski', capacity: 2, drive: 'motor', image: 'maurice.jpg' }
  ])

Reservation.destroy_all
reservation = Reservation.create([
  { start_date: 2016-02-03, end_date: 2016-03-03, number_of_persons: 4 },
  { start_date: 2016-03-18, end_date: 2016-03-25, number_of_persons: 2 },
  { start_date: 2016-02-28, end_date: 2016-03-03, number_of_persons: 6 },
  { start_date: 2016-03-05, end_date: 2016-03-12, number_of_persons: 3 },
  ])
