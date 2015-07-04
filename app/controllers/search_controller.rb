class SearchController < ApplicationController
  def list
    permit_params = params.permit(
      :area_tag,
      :business_tag,
      :type_tag,
      :salary_tag,
      :tags,
      :limit,
      :offset
    )
    @tmpl.merge!({
      interns: Intern.tags_search(permit_params)
    })
  end
end
