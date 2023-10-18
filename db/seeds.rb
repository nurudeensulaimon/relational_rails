# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
nationalpark_1 = NationalPark.create(name: "Acadia",
  location:   "Maine",    
  size:      49075,
  established_date: '1916', 
  visitor_center:   "True") 

  trail_1 = nationalpark_1.trails.create(name:"wonderland",length:10,scenic_view:'True')

  nationalpark_2 = NationalPark.create(name: "Shenandoah",
    location:  "Virginia",       
    size:      200000,  
    established_date: '1935', 
    visitor_center:  "True") 
