# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack BCN', description: "code all day!"
Project.create name: 'Time tracking app', description: "it helps you track your time"
Project.create name: 'Recipes', description: "there are many good ones"
Project.create name: 'Exercise', description: "at least an hour a day"
Project.create name: 'Meditate', description: "it's good for concentration"

Entry.create project_id: 4, hours: 6, minutes: 0, comments: "awesome", date: Date.today
Entry.create project_id: 5, hours: 3, minutes: 30, comments: "super cool", date: Date.today
Entry.create project_id: 2, hours: 2, minutes: 15, comments: "not enough time", date: Date.yesterday
Entry.create project_id: 3, hours: 10, minutes: 45, comments: "too much time", date: Date.yesterday
