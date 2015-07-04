# encoding: utf-8
class Company < ActiveRecord::Base
  attr_accessible *attribute_names
  attr_accessible :company_tags_attributes

  belongs_to :area_tag
  belongs_to :business_tag
  belongs_to :type_tag
  belongs_to :salary

  has_many :company_tags, :inverse_of => :company
  has_many :tags, through: :company_tags
end
