# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  project_1 = Project.create(name: 'New_year')
  project_2 = Project.create(name: 'Party')
  Project.create(name: 'Event')
  project_3 = Project.create(name: 'News')

  project_1.tasks.create(name: 'Report', status: 'done')
  project_1.tasks.create(name: 'Search', status: 'start')
  project_2.tasks.create(name: 'Sent letter', status: 'start')
  Task.create(name: 'Search', status: 'start')
  project_3.tasks.create(name: 'Test_Task', status: 'start')
