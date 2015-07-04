# encoding: utf-8
class Salary < ActiveRecord::Base
  attr_accessible *attribute_names

  has_many :interns

  def rails_admin_name
    show_text
  end
end
