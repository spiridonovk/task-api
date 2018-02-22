class Task < ApplicationRecord
  belongs_to :project, optional: true

  scope :statuses, -> { distinct.order(status: :asc).pluck(:status) }
  scope :first_letter, -> { where('name LIKE ?', 'N%') }
  scope :has_doubles, -> { select(:name).group(:name).having('count(*) > 1') }
end

# SELECT  projects.id, projects.name, COUNT(tasks.id) AS size FROM "projects"  LEFT OUTER JOIN tasks ON projects.id = tasks.project_id GROUP BY projects.id
