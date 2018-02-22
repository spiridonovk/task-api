# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name: 'Garden')
Project.create(name: 'Project')
Project.create(name: 'Brakes')
Project.create(name: 'Test')
Project.create(name: 'Project2')
Task.create(name: 'Task1', status: 'on', project_id: 1)
Task.create(name: 'Neck', status: 'off', project_id: 1)
Task.create(name: 'Nick', status: 'on', project_id: 2)

Task.create(name: 'Nick', status: 'on')
Task.create(name: 'Nick', status: 'off')

