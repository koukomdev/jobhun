json.interns do |json|
  json.array!(@tmpl.interns) do |intern|
    json.intern_id         intern.id
    json.title             intern.title
    json.overview          intern.overview
    json.company_id        intern.company.id
    json.company_name      intern.company.name
    json.corporate_culture intern.company.corporate_culture
    json.image_url         intern.image_url
    json.video_url         intern.video_url
    json.area_tags do |j|
      j.id   intern.area_tag.try(:id)
      j.name intern.area_tag.try(:name)
      j.type 'area_tags'
    end
    json.business_tags do |j|
      j.id   intern.business_tag.try(:id)
      j.name intern.business_tag.try(:name)
      j.type 'business_tags'
    end
    json.type_tags do |j|
      j.id   intern.type_tag.try(:id)
      j.name intern.type_tag.try(:name)
      j.type 'type_tags'
    end
    json.salaries do |j|
      j.id        intern.salary.try(:id)
      j.show_text intern.salary.try(:show_text)
      j.type      'salaries'
    end
    json.tags do |j|
      json.array!(intern.tags) do |tag|
        j.id   tag.try(:id)
        j.name tag.try(:name)
        j.type 'tags'
      end
    end
  end
end
