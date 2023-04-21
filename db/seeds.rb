# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

space_agency_1 = SpaceAgency.create(
  { name: "ESA", headquarters: "Paris", exists: true }
)
space_agency_2 = SpaceAgency.create(
  { name: "NASA", headquarters: "Washington D.C.", exists: true }
)

mission_1 = Mission.create(
  { name: "Ariane", initiated: "1973" }
)

Rocket.create(
  [
    { name: "Ariane 1", mission_id: mission_1.id, first_launch: "1979"},
    { name: "Ariane 2", mission_id: mission_1.id, first_launch: "1986" }
  ]
)

# rails g scaffold Rocket name:string mission_id:integer first_launch:string --belongs_to :mission
# rails g scaffold SpaceAgency name:string headquarters:string exists:boolean --has_many :missions
# rails g scaffold Mission name:string initiated:string terminated:string --has_many :space_agencies