# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_list = [
  [ "John Doe", "jdoe@example.com", "123456789", "123456789"],
  [ "Joe smith", "jsmith@example.com", "123456789", "123456789"],
  [ "Max Bingham", "mbingham@example.com", "123456789", "123456789"],
  [ "Tom Minyar", "tminyard@example.com", "123456789", "123456789"]
]

user_list.each do |name, email, password, password_confirmation|
  User.create( name: name, password: password, password_confirmation: password_confirmation)
end
