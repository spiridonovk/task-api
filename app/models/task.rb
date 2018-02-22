class Task < ApplicationRecord
  belongs_to :project, optional: true

  scope :statuses, -> { distinct.order(status: :asc).pluck(:status) }

  scope :has_doubles, -> { select(:name).group(:name).having('count(*) > 1') }
end
