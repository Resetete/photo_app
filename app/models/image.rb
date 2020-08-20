class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader # use carrierwave to upload

  validate :picture_size

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, 'Should be less than 5 MB')
    end
  end
end
