class Photo < ApplicationRecord
  belongs_to :uploader, class_name: "Admin"
  mount_uploader :file, PhotoFileUploader

  def self.add_new_for_admin(params, admin_id)
    Photo.create(
      id: SecureRandom.uuid,
      file: params[:file],
      uploader_id: admin_id,
    )
  end

  def original_filename
    return nil unless file.filename
    file.filename.split("/").last.split("_").last
  end
end
