# encoding: utf-8
class Salary < ActiveRecord::Base
  attr_accessible :show_text, :salary, :updated_at

  has_many :companies
end
