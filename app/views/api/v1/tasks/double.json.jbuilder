
json.array! @tasks do |task|
  json.id task.id
  json.name task.name
  json.project_name task.project.name unless task.project.nil?
end
