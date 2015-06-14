# encoding: utf-8
class TypeTag < ActiveRecord::Base
  attr_accessible :name, :updated_at

  has_many :companies
end
