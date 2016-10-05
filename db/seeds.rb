# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.create!(birth_date:'2015-01-20',color: 'Purple',name: 'Grape',sex: 'M', description: 'Will just have for a couple of days!')
Cat.create!(birth_date:'2015-01-21',color: 'Blue',name: 'Sky',sex: 'F', description: 'Will have for a couple of months!')

CatRentalRequest.create(cat_id: 1,start_date:'2015-01-21',end_date:'2015-01-27',status:'APPROVED')
CatRentalRequest.create(cat_id: 1,start_date:'2015-01-22',end_date:'2015-01-26',status:'APPROVED')
CatRentalRequest.create(cat_id: 1,start_date:'2015-01-21',end_date:'2015-01-27',status:'PENDING')
