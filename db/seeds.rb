# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
    first_name  = Faker::Name.first_name
    last_name   = Faker::Name.last_name
    middle_name = Faker::Name.name_with_middle
    username    = Faker::Internet.user_name(first_name + " " + last_name, %w(. _ -))
    email       = Faker::Internet.free_email(first_name + "-" + last_name)
    phone       = Faker::PhoneNumber.cell_phone
    profession  = Faker::Company.profession
    abn         = Faker::Company.australian_business_number
Profile.create!(
        first_name:     first_name,
        last_name:      last_name,
        middle_name:    middle_name,
        username:       username ,
        email:          email,
        phone:          phone,
        profession:     profession,
        abn:            abn,
    )
end