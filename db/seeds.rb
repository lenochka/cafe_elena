# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#


Role.create(name: 'Customer')
Role.create(name: 'Admin')
Role.create(name: 'Employee')

User.create(email_address: 'customer-bakery@gmail.com', user_name: 'Jane Customer', user_type: 'customer', password: 'password123', role_id: 1)
