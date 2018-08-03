class Photo < ApplicationRecord
  belongs_to :room

  mount_uploader :path, PictureUploader
  validate :path_size

  private

  def path_size; end
end
