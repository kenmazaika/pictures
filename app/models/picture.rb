class Picture < ActiveRecord::Base
  mount_uploader :avatar, PictureUploader
  
  cached_file_for :avatar

  validates :name, :presence => true

  attr_accessible :avatar, :avatar_cache_id, :name
end
