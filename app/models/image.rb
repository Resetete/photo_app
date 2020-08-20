class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader # use carrierwave to upload
end
