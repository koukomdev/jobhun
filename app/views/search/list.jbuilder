json.interns do |json|
  json.array!(@tmpl.interns) do |intern|
    json.intern_id         intern.id
    json.title             intern.title
    json.overview          intern.overview
    json.company_id        intern.company.id
    json.company_name      intern.company.name
    json.corporate_culture intern.company.corporate_culture
    json.video             Settings.base_url + intern.video.url
    json.image             Settings.base_url + intern.image.url
    json.area_tags do |j|
      json.id   intern.area_tag.try(:id)
      json.name intern.area_tag.try(:name)
      json.type 'area_tags'
    end
    json.business_tags do |j|
      json.id   intern.business_tag.try(:id)
      json.name intern.business_tag.try(:name)
      json.type 'business_tags'
    end
    json.type_tags do |j|
      json.id   intern.type_tag.try(:id)
      json.name intern.type_tag.try(:name)
      json.type 'type_tags'
    end
    json.salaries do |j|
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
