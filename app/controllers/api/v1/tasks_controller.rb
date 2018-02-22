class Api::V1::TasksController < ApplicationController
  def statuses
    statuses = Task.statuses
    render json: statuses, status: 200
  end

  def first_letter
    @tasks = Task.first_letter
    render :name, status: 200
end

  def double
    @arr = []
    tasks = Task.has_doubles
    tasks.each do |task|
      @arr += Task.where(name: task.name)
    end
    render :double, status: 200
  end
end
