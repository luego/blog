# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
newuser = User.new({:name=>'Luis Edo',:username => 'luego', :email => 'luego1986@gmail.com',
          :password => 'luego+312543',
          :password_confirmation => 'luego+312543',:admin => true})
#newuser.skip_confirmation!
newuser.save
Category.create({:name => 'php'})
Category.create({:name => 'ruby'})
Category.create({:name => 'python'})