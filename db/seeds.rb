require 'faker'
Faker::Config.locale = 'en-CA'

Customer.destroy_all
Checkin.destroy_all
Technician.destroy_all
Service.destroy_all

8.times do 
  Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    birth_date: Faker::Date.birthday(min_age: 6, max_age: 80),
    phone_num: Faker::PhoneNumber.unique.cell_phone
  )
end