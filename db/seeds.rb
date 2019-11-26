# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


U1 = User.create(full_name: 'Charlotte Lin', address: 'Rheinsberger Str. 76, Berlin', email: 'charlotte@example.com', password: '123456', password_confirmation: '123456')

U2 = User.create(full_name: 'Emily Johnson', address: 'Strelitzer Str. 51, Berlin', email: 'charlotte@example.com', password: '123456', password_confirmation: '123456')

U3 = User.create(full_name: 'Frank McIntyre', address: 'Mauerpark, Berlin', email: 'frank@example.com', password: '123456', password_confirmation: '123456')

U4 = User.create(full_name: 'Ina Fellows', address: 'Wattstraße 6, Berlin', email: 'ina@example.com', password: '123456', password_confirmation: '123456')

U5 = User.create(full_name: 'Linh Tran', address: 'Brunnenstraße 41, Berlin', email: 'linh@example.com', password: '123456', password_confirmation: '123456')

U6 = User.create(full_name: 'Rahul Singh', address: 'Gustav-Meyer-Allee, Berlin', email: 'rahul@example.com', password: '123456', password_confirmation: '123456')

U7 = User.create(full_name: 'Peter Thiem', address: 'Gleimviertel, Berlin', email: 'peter@example.com', password: '123456', password_confirmation: '123456')

U8 = User.create(full_name: 'Melanie Ciccioni', address: 'Oderberger Str. 33, Berlin', email: 'melanie@example.com', password: '123456', password_confirmation: '123456')

U9 = User.create(full_name: 'Jolene Mallone', address: 'Fehrbelliner Str. 43, Berlin', email: 'jolene@example.com', password: '123456', password_confirmation: '123456')

U10 = User.create(full_name: 'Giselle Hobosh', address: 'Bernauer Str. 89, Berlin', email: 'giselle@example.com', password: '123456', password_confirmation: '123456')


Dog 1
url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574434880/DoggieWalkie/Tinkerbell.jpg"
d1 = Dog.create(name:'Tinkerbell’, user:User.last, breed:’Toy Poodle’, sex:’Female’, age:’Puppy’, hangouts:’,


Dog 2
url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574765745/DoggieWalkie/BeagleRyan.jpg”
d2 = Dog.new(name:’Ryan’, user:User.last, breed:’Beagle’, sex:'Male’ age:’Puppy’, address: Strelitzer Str. 51, Berlin, b
