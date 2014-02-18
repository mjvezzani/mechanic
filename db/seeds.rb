# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tool.create!(name: "Hammer", purpose: "Hit things")
Tool.create!(name: "Wrench", purpose: "Tighten and loosen nuts")
Tool.create!(name: "Blowtorch", purpose: "Cut things")
Tool.create!(name: "Ratchet", purpose: "Tighten and loosen nuts faster")
