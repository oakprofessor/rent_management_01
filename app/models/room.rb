class Room < ApplicationRecord
  has_many :room_services
  has_many :room_facilites
  has_many :orders

  belongs_to :home
end
