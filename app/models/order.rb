class Order < ApplicationRecord
  belongs_to :room
  belongs_to :user
end
