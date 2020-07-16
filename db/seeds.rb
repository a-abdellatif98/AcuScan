# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.times do

    admin = Admin.new({
        "name"=>"Ahmed", 
        "dob"=>"1998-01-05", 
        "mobile"=>"01004278945", 
        "adress"=>"ahmed asdmo",
        "NationalId"=>"98765437101234",
        "gender"=>"male", 
        "email"=>"ahmed.abdelatife@gmail.com", 
        "password"=>"5198**", 
        "password_confirmation"=>"5198**"
        })

    admin.save!
end