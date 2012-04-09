class Picture < ActiveRecord::Base
  has_attached_file :file
  cached_file_for :file

  attr_accessible :file, :file_cache_id, :file_cache, :name
end
