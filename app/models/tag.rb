# encoding: utf-8
class Tag < ActiveRecord::Base
  attr_accessible :name, :updated_at

  has_many :company_tags
  has_many :companies, through: :company_tags
end
