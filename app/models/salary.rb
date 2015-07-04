# encoding: utf-8
class Salary < ActiveRecord::Base
  attr_accessible *attribute_names

  has_many :companies
end
