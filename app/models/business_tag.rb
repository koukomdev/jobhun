# encoding: utf-8
class BusinessTag < ActiveRecord::Base
  attr_accessible *attribute_names

  has_many :companies
end
