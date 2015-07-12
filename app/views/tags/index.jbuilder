json.area_tags do |json|
  json.array!(@tmpl.area_tags) do |area_tag|
    json.extract! area_tag, :id, :name
    json.type 'area_tags'
  end
end
json.business_tags do |json|
  json.array!(@tmpl.business_tags) do |business_tag|
    json.extract! business_tag, :id, :name
    json.type 'business_tags'
  end
end
json.type_tags do |json|
  json.array!(@tmpl.type_tags) do |type_tag|
    json.extract! type_tag, :id, :name
    json.type 'type_tags'
  end
end
json.salaries do |json|
  json.array!(@tmpl.salaries) do |salary|
    json.extract! salary, :id, :show_text
    json.type 'salaries'
  end
end
json.tags do |tag|
  json.array!(@tmpl.tags) do |tag|
    json.extract! tag, :id, :name
    json.type 'tags'
  end
end
