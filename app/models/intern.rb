class Intern < ActiveRecord::Base
  attr_accessible *attribute_names

  belongs_to :company
  belongs_to :area_tag
  belongs_to :business_tag
  belongs_to :type_tag
  belongs_to :salary

  has_many :intern_tags, :inverse_of => :intern
  has_many :tags, through: :company_tags
end
