class Photo < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :users
  validates :photo, presence: true
end
