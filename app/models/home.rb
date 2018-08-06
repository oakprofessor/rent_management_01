class Home < ApplicationRecord
  belongs_to :user

  validates :address, presence: true
  validates :room_number, presence: true, numericality: true
  validates :room_empty, presence: true, numericality: true
end
