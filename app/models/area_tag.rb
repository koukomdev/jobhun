# encoding: utf-8
class AreaTag < ActiveRecord::Base
  attr_accessible *attribute_names

  has_many :interns
end
