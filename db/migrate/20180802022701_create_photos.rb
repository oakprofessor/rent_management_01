class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :path
      t.text :title
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
