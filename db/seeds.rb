require 'faker'
# Faker::Config.locale = 'en-CA'

Customer.destroy_all
Checkin.destroy_all
Technician.destroy_all
Service.destroy_all
CustomerCheckin.destroy_all

technician_list = ['Parker', 'Julie', 'Owen', 'Helen', 'Jane', 'Emma', 'Jeny']
service_list = ['Manicure', 'Pedicure', 'Acrylic', 'Gel Nails', 'Crown Pedicure', 'Shellac Manicure']

10.times do 
  customer = Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    birth_date: Faker::Date.birthday(min_age: 6, max_age: 80),
    phone_num: Faker::Number.number(digits: 10)
  )

  checkin = Checkin.create(
    date: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today)
  )

  # puts Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today)
  # puts "#{checkin}"
  # checkin.save()


  rand(1..4).times do
    checkin.technicians.create(
      name: technician_list.sample
    )

    checkin.services.create(
      name: service_list.sample
    )
  end
  
end

c = Customer.all
c.each do |customer|
  ch = Checkin.all.sample
  customer.customer_checkins.create(
    checkin: ch
  )
end

puts "Number of Customers: #{Customer.count}."
puts "Number of Checkins: #{Checkin.count}."
puts "Number of Technicians: #{Technician.count}."
puts "Number of Services: #{Service.count}."
puts "Number of Customer Checking: #{CustomerCheckin.count}."
