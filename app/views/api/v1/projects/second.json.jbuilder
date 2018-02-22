json.array! @projects do |project|
  json.id project.id
  json.name project.name
  json.project_count project.project_size
end
