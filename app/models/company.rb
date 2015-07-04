# encoding: utf-8
class Company < ActiveRecord::Base
  attr_accessible *attribute_names

  belongs_to :area_tag
  belongs_to :business_tag
  belongs_to :type_tag
  belongs_to :salary
end
