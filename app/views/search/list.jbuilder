json.interns do |json|
  json.array!(@tmpl.interns) do |intern|
    json.intern_id         intern.id
    json.title             intern.title
    json.overview          intern.overview
    json.company_id        intern.company.id
    json.company_name      intern.company.name
    json.corporate_culture intern.company.corporate_culture
    json.area_tag do |j|
      json.id   intern.area_tag.try(:id)
      json.name intern.area_tag.try(:name)
      json.type 'area_tag'
    end
    json.business_tag do |j|
      json.id   intern.business_tag.try(:id)
      json.name intern.business_tag.try(:name)
      json.type 'business_tag'
    end
    json.type_tag do |j|
      json.id   intern.type_tag.try(:id)
      json.name intern.type_tag.try(:name)
      json.type 'type_tag'
    end
    json.salary_tag do |j|
      json.id        intern.salary.try(:id)
      json.show_text intern.salary.try(:show_text)
      json.type      'salaries'
    end
    json.tags do |j|
      json.array!(intern.tags) do |tag|
        json.id   tag.try(:id)
        json.name tag.try(:name)
        json.type 'tags'
      end
    end
  end
end
