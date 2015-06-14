# encoding: utf-8
class AreaTag < ActiveRecord::Base
  attr_accessible :name, :updated_at

  has_many :companies
end
