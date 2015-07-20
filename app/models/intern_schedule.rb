class InternSchedule < ActiveRecord::Base
  attr_accessible *attribute_names

  belongs_to :intern
end
