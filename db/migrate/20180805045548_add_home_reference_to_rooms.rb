class AddHomeReferenceToRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :rooms, :home, foreign_key: true
  end
end
