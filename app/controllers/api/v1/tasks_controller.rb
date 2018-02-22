class Api::V1::TasksController < ApplicationController
  def statuses
    statuses = Task.statuses
    render json: statuses, status: 200
  end

  def first_letter
    @tasks = []
    Project.first_letter.each do |project|
      @tasks += Task.where(project_id: project)
    end
  end

  def double
    @tasks = []
    Task.has_doubles.each do |task|
      @tasks += Task.where(name: task.name)
    end
    render :double, status: 200
  end
end
