# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user1 = User.create(firstName:'Dan', lastName: 'Turner', username: 'dturner', password_hash: 'ABC', email:'dturner@tcd.ie')
@user2 = User.create(firstName:'Jon', lastName: 'Turner', username: 'jturner', password_hash: 'BCD', email:'jturner@tcd.ie')
@user3 = User.create(firstName:'Leslie', lastName: 'Turner', username: 'lturner', password_hash: 'CDE', email:'lturner@tcd.ie')
@user4 = User.create(firstName:'Lori', lastName: 'Turner', username: 'lturner1', password_hash: 'DEF', email:'lturner1@tcd.ie')

#Chat.create(name: 'Chat1', admin: 'dturner')
#Chat.create(name: 'Chat2', admin: 'lturner1')
#Chat.create(name: 'Chat3', admin: 'dturner')
#Chat.create(name: 'Chat4', admin: 'jturner')

@user1.chats.create(name:'dAndl', admin: @user1.username)
@user2.chats.create(name:'lorAndLes', admin: @user2.username)
@user1.chats.create(name:'dloriAndLes', admin: @user1.username)
#need to change admin:* to admin: current_user for application

# add user2 to user1's group
#@user2.chats << @user1.chats.find(1)
# search by attribute users.where(attribute:value)
