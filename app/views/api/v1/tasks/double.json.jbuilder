
json.array! @arr do |arr|
  json.id arr.id
  json.name arr.name
  # json.project_name task.project.name unless task.project.nil?
end
