# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Coming right from Mongoid docs (http://mongoid.org/en/mongoid/docs/persistence.html#standard)
# calling Model.destroy_all will help reset our database every time we run rake db:seed
User.destroy_all
Shoe.destroy_all

# Feel free to add some seed data below!
# User.create(name: '')