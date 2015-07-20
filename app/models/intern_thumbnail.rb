class InternThumbnail < ActiveRecord::Base
  attr_accessible *attribute_names

  belongs_to :intern

  mount_uploader :image, ImageUploader
end
