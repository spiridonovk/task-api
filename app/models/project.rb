class Project < ApplicationRecord
  has_many :tasks

  scope :order_by_name, -> { order('lower(name) asc') }
  scope :sort_by_tasks, -> {
                          select('projects.id, projects.name, COUNT(tasks.id) AS project_size').joins('LEFT OUTER JOIN tasks ON projects.id = tasks.project_id').group('projects.id').order('project_size DESC')
                        }
  scope :include_letter, -> { where('name ~* ?', '^\w+a\w+$') }
end
