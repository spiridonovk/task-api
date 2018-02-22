json.array! @projects do |project|
  json.id project.id
  json.name project.name
  json.task_size project.project_size
end
