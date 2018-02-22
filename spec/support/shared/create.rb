shared_examples_for 'Create data' do
  before do
    p = Project.create(name: 'New_year')
    z = Project.create(name: 'Party')
    Project.create(name: 'Event')
    p.tasks.create(name: 'Report', status: 'done')
    p.tasks.create(name: 'Search', status: 'start')
    z.tasks.create(name: 'Sent letter', status: 'start')
    Task.create(name: 'Search', status: 'start')
  end
end
