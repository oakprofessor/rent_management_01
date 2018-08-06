class Room < ApplicationRecord
  has_many :room_services
  has_many :room_facilites
  has_many :orders
  has_many :photos, dependent: :destroy

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :state, presence: true
  validates :area, presence: true, numericality: true
end
