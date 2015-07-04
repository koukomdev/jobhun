# encoding: utf-8
class InternTag < ActiveRecord::Base
  attr_accessible *attribute_names

  belongs_to :tag
  belongs_to :intern, :inverse_of => :intern_tags
end
