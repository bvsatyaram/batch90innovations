# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.find_or_create_by(email: "admin@batch90innovations.com") do |admin|
  admin.password = "secret123"
  admin.password_confirmation = "secret123"
  admin.admin = true
end

User.find_or_create_by(email: "judge@batch90innovations.com") do |judge|
  judge.password = "secret123"
  judge.password_confirmation = "secret123"
  judge.judge = true
end

User.find_or_create_by(email: "applicant@batch90innovations.com") do |applicant|
  applicant.password = "secret123"
  applicant.password_confirmation = "secret123"
end

User.all.each do |user|
  puts "Confirming #{user.email}"
  user.confirm!
end