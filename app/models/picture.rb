class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # add limit

  # mount_uploader :picture, PictureUploader
  # validate :picture_size
  
  # private
  
  # def picture_size
  #   if picture.size > 5.megabytes
  #     errors.add(:picture, "should be less than 5MB")
  #   end
  # end
end
