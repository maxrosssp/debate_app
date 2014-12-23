# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{ name: 'Max', email: 'max@aol.com' }, 
                     { name: 'Jack', email: 'jack@aol.com'},
                     { name: 'Bill', email: 'bill@aol.com'}])
                     
users = [{ name: 'Marty', email: 'marty@aol.com' }, 
        { name: 'Jan', email: 'jan@aol.com'},
        { name: 'Brian', email: 'brian@aol.com'}]
        
users.each do |user|
  User.create(user)
end

Micropost.create([{ content: 'I love stew.', user_id: User.find_by(name: 'Max').id},
                  { content: 'Where do babies come from?', user_id: User.find_by(name: 'Marty')},
                  { content: 'Halloween is the best.', user_id: User.find_by(name: 'Jan')}])
