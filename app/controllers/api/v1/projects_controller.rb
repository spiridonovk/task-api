class Api::V1::ProjectsController < ApplicationController
  def index
    @projects = Project.order_by_name
    render :index, status: 200
  end

  def sort_by_tasks
    @projects = Project.sort_by_tasks
    render :sort_by_tasks, status: 200
  end

  def include
    @projects = Project.include_letter
    render :include, status: 200
  end
end
