class Order < ApplicationRecord
  belongs_to :room
  validates :date_start, presence: true
end
