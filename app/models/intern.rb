class Intern < ActiveRecord::Base
  attr_accessible *attribute_names
  attr_accessible :tag_ids, :intern_tags_attributes

  belongs_to :company
  belongs_to :area_tag
  belongs_to :business_tag
  belongs_to :type_tag
  belongs_to :salary

  has_many :intern_tags, :inverse_of => :intern
  has_many :tags, through: :intern_tags

  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  DEFAULT_LIMIT = 10

  def self.tags_search(params)
    result = if params[:limit]
               limit(params[:limit])
             else
               limit(DEFAULT_LIMIT)
             end
    result = result.offset(params[:offset]) if params[:offset]

    result = result.where(area_tag_id: params[:area_tag]) if params[:area_tag].present?
    result = result.where(business_tag_id: params[:business_tag]) if params[:business_tag].present?
    result = result.where(type_tag_id: params[:type_tag]) if params[:type_tag].present?

    if params[:salary_tag].present?
      salary = Salary.where(id: params[:salary_tag]).first.try(:salary).to_i
      result = result.joins(:salary).merge(Salary.where("salary >= ?", salary))
    end

    if params[:tags].present?
      [params[:tags]].flatten.each do |tag|
        result = result.where(
          InternTag
            .where(InternTag.arel_table[:tag_id].eq(tag))
            .where(InternTag.arel_table[:intern_id].eq(Intern.arel_table[:id]))
            .exists
        )
      end
    end

    result
  end
end
