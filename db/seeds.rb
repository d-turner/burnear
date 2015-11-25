# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(firstName:'Dan', lastName: 'Turner', username: 'dturner', password_hash: 'ABC', email:'dturner@tcd.ie')
User.create(firstName:'Jon', lastName: 'Turner', username: 'jturner', password_hash: 'BCD', email:'jturner@tcd.ie')
User.create(firstName:'Leslie', lastName: 'Turner', username: 'lturner', password_hash: 'CDE', email:'lturner@tcd.ie')
User.create(firstName:'Lori', lastName: 'Turner', username: 'lturner1', password_hash: 'DEF', email:'lturner1@tcd.ie')

Chat.create(name: 'Chat1', owner: 'dturner')
Chat.create(name: 'Chat2', owner: 'lturner1')
Chat.create(name: 'Chat3', owner: 'dturner')
