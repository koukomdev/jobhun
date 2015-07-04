class TagController < ApplicationController
  # todo: tagは会社側上位 5 件
  TAG_LIMIT = 5
  def index
    # nop
    @tmpl.merge!({
      :area_tags => AreaTag.all,
      :business_tags => BusinessTag.all,
      :type_tags => TypeTag.all,
      :salaries => Salary.all,
      :tags => Tag.limit(TAG_LIMIT)
    })
  end
end
