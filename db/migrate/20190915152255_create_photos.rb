class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos, id: :uuid do |t|
      t.string :file, null: false
      t.uuid :uploader_id

      t.timestamps
    end
    add_foreign_key :photos, :admins, column: :uploader_id, primary_key: :id
  end
end
