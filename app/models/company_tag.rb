# encoding: utf-8
class CompanyTag < ActiveRecord::Base
  attr_accessible :company, :company_id, :tag, :tag_id, :updated_at

  belongs_to :tag
  belongs_to :company, :inverse_of => :company_tags
end
