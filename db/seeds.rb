# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create!(name: 'Savings')
Account.create!(name: 'Current')

User.create!(first_name: "Anna", last_name: "Mary", age: 24)
UserAccount.create!(account_number: 1234, password_digest: 1234, user_id: 1, account_id: 1)
UserAccount.create!(account_number: 2468, password_digest: 1234, user_id: 1, account_id: 2)

User.create!(first_name: "Dan", last_name: "Brown", age: 48)
UserAccount.create!(account_number: 2345, password_digest: 2468, user_id: 2, account_id: 2)

User.create!(first_name: "John", last_name: "Gomez", age: 34)
UserAccount.create!(account_number: 6789, password_digest: 2145, user_id: 3, account_id: 2)