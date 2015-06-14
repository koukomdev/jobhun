# encoding: utf-8
class Company < ActiveRecord::Base
  attr_accessible :name, :kana, :status, :overview, :corporate_culture, :area_tag, :area_tag_id, :business_tag, :business_tag_id, :type_tag, :type_tag_id, :salary, :salary_id, :updated_at

  belongs_to :area_tag
  belongs_to :business_tag
  belongs_to :type_tag
  belongs_to :salary

  has_many :company_tags, :inverse_of => :company
  has_many :tags, through: :company_tags
end
