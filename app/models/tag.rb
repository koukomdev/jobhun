# encoding: utf-8
class Tag < ActiveRecord::Base
  attr_accessible *attribute_names

  has_many :intern_tags
  has_many :interns, through: :intern_tags
end
