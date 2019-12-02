# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dog.destroy_all

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574787560/DoggieWalkie/owner/Screen_Shot_2019-11-26_at_17.40.05_qh0ttj.png"
u1 = User.create(full_name: 'Charlotte Lin', address: 'Rheinsberger Str. 76, Berlin', email: 'charlotte@example.com', password: '123456', password_confirmation: '123456')
u1.remote_photo_url = user_image_url
u1.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806618/DoggieWalkie/owner/Emily_Johnson_v4ysxh.png"
u2 = User.create(full_name: 'Emily Johnson', address: 'Strelitzer Str. 51, Berlin', email: 'emily@example.com', password: '123456', password_confirmation: '123456')
u2.remote_photo_url = user_image_url
u2.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806894/DoggieWalkie/owner/Frank_McIntyre_uep4ei.png"
u3 = User.create(full_name: 'Frank McIntyre', address: 'Elisabeth-Schwarzhaupt-Platz 1, Berlin', email: 'frank@example.com', password: '123456', password_confirmation: '123456')
u3.remote_photo_url = user_image_url
u3.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806895/DoggieWalkie/owner/Ina_Fellows_mf1k4a.png"
u4 = User.create(full_name: 'Ina Fellows', address: 'Wattstraße 6, Berlin', email: 'ina@example.com', password: '123456', password_confirmation: '123456')
u4.remote_photo_url = user_image_url
u4.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806896/DoggieWalkie/owner/Linh_Tran_hgctmq.png"
u5 = User.create(full_name: 'Linh Tran', address: 'Brunnenstraße 41, Berlin', email: 'linh@example.com', password: '123456', password_confirmation: '123456')
u5.remote_photo_url = user_image_url
u5.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806894/DoggieWalkie/owner/Rahul_Singh_v9t5kv.jpg"
u6 = User.create(full_name: 'Rahul Singh', address: 'Ackerstraße 40, Berlin', email: 'rahul@example.com', password: '123456', password_confirmation: '123456')
u6.remote_photo_url = user_image_url
u6.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806895/DoggieWalkie/owner/Peter_Thiem_pf6o69.png"
u7 = User.create(full_name: 'Peter Thiem', address: 'Ackerstraße 60, Berlin', email: 'peter@example.com', password: '123456', password_confirmation: '123456')
u7.remote_photo_url = user_image_url
u7.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806894/DoggieWalkie/owner/Melanie_Ciccioni_ejpfgt.png"
u8 = User.create(full_name: 'Melanie Ciccioni', address: 'Oderberger Str. 33, Berlin', email: 'melanie@example.com', password: '123456', password_confirmation: '123456')
u8.remote_photo_url = user_image_url
u8.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806895/DoggieWalkie/owner/Jolene_Mallone_dehlhr.png"
u9 = User.create(full_name: 'Jolene Mallone', address: 'Fehrbelliner Str. 43, Berlin', email: 'jolene@example.com', password: '123456', password_confirmation: '123456')
u9.remote_photo_url = user_image_url
u9.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574806894/DoggieWalkie/owner/Giselle_Hobosh_as9zuz.png"


u10 = User.create(full_name: 'Giselle Hobosh', address: 'Fehrbelliner Str. 25, Berlin', email: 'giselle@example.com', password: '123456', password_confirmation: '123456')
u10.remote_photo_url = user_image_url
u10.save!

user_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574850880/DoggieWalkie/owner/Gordana_kkujn0.png"
u11 = User.create(full_name: 'Gordana Macura', address: 'Rheinsberger Str. 76, Berlin', email: 'me@example.com', password: '123456', password_confirmation: '123456')
u11.remote_photo_url = user_image_url
u11.save!



dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574434880/DoggieWalkie/Tinkerbell.jpg"
d1 = Dog.create(name:'Tinkerbell', user: u1, breed:'Toy Poodle', sex:'Female', age:'Puppy', hangouts:'Preußen Park')
d1.remote_photo_url = dog_image_url
d1.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785240/DoggieWalkie/Ryan_Beagle_wexbh5.jpg"
d2 = Dog.create(name:'Ryan', user: u2, breed:'Beagle', sex:'Male', age:'Puppy', hangouts:'Gorlitzer Park')
d2.remote_photo_url = dog_image_url
d2.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785092/DoggieWalkie/Anthony_Boo_azyf9j.jpg"
d3 = Dog.create(name:'Anthony', user: u3, breed:'Boo', sex:'Male', age:'teen', hangouts:'Maurpark')
d3.remote_photo_url = dog_image_url
d3.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785093/DoggieWalkie/Richard_ChineseCrested_qpogkv.jpg"
d4 = Dog.create(name:'Richard', user: u4, breed:'Chinese Crested Dog', sex:'Male', age:'Adult', hangouts:'German Historical Museum')
d4.remote_photo_url = dog_image_url
d4.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785325/DoggieWalkie/Dimitri_French_Bulldog_pmxa8w.jpg"
d5 = Dog.create(name:'Dimitri', user: u5, breed:'French Bulldog', sex:'Male', age:'Adult', hangouts:'Der Spree', photo: "Dimitri_French_Bulldog_pmxa8w")
d5.remote_photo_url = dog_image_url
d5.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785092/DoggieWalkie/Andy_Huski_jmyiew.jpg"
d6 = Dog.create(name:'Andy', user: u6, breed:'Huski', sex:'Male', age:'Adult', hangouts:'Victoria Park')
d6.remote_photo_url = dog_image_url
d6.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574786168/DoggieWalkie/Zuza_Dachhound_y0xde9.jpg"
d7 = Dog.create(name:'Zuza', user: u7, breed:'Dachshund', sex:'Female', age:'Puppy', hangouts:'Tiergarten')
d7.remote_photo_url = dog_image_url
d7.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785873/DoggieWalkie/Santi_GreyPuli_mflmjq.jpg"
d8 = Dog.create(name:'Santi', user: u8, breed:'Puli', sex:'Male', age:'Puppy', hangouts:'Gorlitzer Park')
d8.remote_photo_url = dog_image_url
d8.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574785436/DoggieWalkie/Toni_Shiba_gezc4l.png"
d9 = Dog.create(name:'Toni', user: u9, breed:'Shiba', sex:'Female', age:'Puppy', hangouts:'Volkspark Friedrichshain')
d9.remote_photo_url = dog_image_url
d9.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574848146/DoggieWalkie/Rhett_Golden_Retriver_qyh329.png"
d10 = Dog.create(name:'Rhett', user: u10, breed:'Golden Retriver', sex:'Male', age:'Senior', hangouts:'Schlosspark Charlottenburg')
d10.remote_photo_url = dog_image_url
d10.save!

dog_image_url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574851209/DoggieWalkie/Bubzi_Prague_ratter_osgdzq.png"
d11 = Dog.create(name:'Bubzi', user: u11, breed:'Prague Ratter', sex:'Male', age:'Teen', hangouts:'Hundewiese Tempelhofer Feld')
d11.remote_photo_url = dog_image_url
d11.save!


puts 'Dogs are done'


Activity1 = Activity.create(name:'Running')
Activity2 = Activity.create(name:'Wrestling')
Activity3 = Activity.create(name:'Playing Fetch')
Activity4 = Activity.create(name:'Off-leash')
Activity5 = Activity.create(name:'Casual Strolling')
Activity6 = Activity.create(name:'Swimming')

DogActivity.create(dog_id: d1.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d1.id, activity_id: Activity3.id)
DogActivity.create(dog_id: d1.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d1.id, activity_id: Activity2.id)


DogActivity.create(dog_id: d2.id, activity_id: Activity2.id)
DogActivity.create(dog_id: d2.id, activity_id: Activity4.id)
DogActivity.create(dog_id: d2.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d2.id, activity_id: Activity3.id)


DogActivity.create(dog_id: d3.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d3.id, activity_id: Activity3.id)
DogActivity.create(dog_id: d3.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d3.id, activity_id: Activity4.id)

DogActivity.create(dog_id: d4.id, activity_id: Activity2.id)
DogActivity.create(dog_id: d4.id, activity_id: Activity4.id)
DogActivity.create(dog_id: d4.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d4.id, activity_id: Activity3.id)

DogActivity.create(dog_id: d5.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d5.id, activity_id: Activity3.id)
DogActivity.create(dog_id: d5.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d5.id, activity_id: Activity4.id)

DogActivity.create(dog_id: d6.id, activity_id: Activity2.id)
DogActivity.create(dog_id: d6.id, activity_id: Activity4.id)
DogActivity.create(dog_id: d6.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d6.id, activity_id: Activity3.id)

DogActivity.create(dog_id: d7.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d7.id, activity_id: Activity3.id)
DogActivity.create(dog_id: d7.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d7.id, activity_id: Activity2.id)

DogActivity.create(dog_id: d8.id, activity_id: Activity2.id)
DogActivity.create(dog_id: d8.id, activity_id: Activity4.id)
DogActivity.create(dog_id: d8.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d8.id, activity_id: Activity3.id)

DogActivity.create(dog_id: d9.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d9.id, activity_id: Activity4.id)
DogActivity.create(dog_id: d9.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d9.id, activity_id: Activity3.id)

DogActivity.create(dog_id: d10.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d10.id, activity_id: Activity4.id)
DogActivity.create(dog_id: d10.id, activity_id: Activity2.id)
DogActivity.create(dog_id: d10.id, activity_id: Activity3.id)

DogActivity.create(dog_id: d11.id, activity_id: Activity1.id)
DogActivity.create(dog_id: d11.id, activity_id: Activity3.id)
DogActivity.create(dog_id: d11.id, activity_id: Activity5.id)
DogActivity.create(dog_id: d11.id, activity_id: Activity2.id)


puts 'Activities are done'
