# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Student.create!(first_name: "dan", last_name: "behrman")
Student.create!(first_name: "paulie", last_name: "gee")
Student.create!(first_name: "vander", last_name: "snort")
Student.create!(first_name: "felicity", last_name: "beagle")