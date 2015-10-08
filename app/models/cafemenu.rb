class Cafemenu < ActiveRecord::Base
  mount_uploader :file, CafemenuUploader

  validates :name, :presence => true
  validates :file, :presence => true
end
