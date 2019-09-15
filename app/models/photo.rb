class Photo < ApplicationRecord
  belongs_to :uploader, class_name: "Admin"
  mount_uploader :file, PhotoFileUploader

  def self.add_new_for_admin(params, admin_id)
    Photo.create(
      file: params[:file],
      uploader_id: admin_id,
    )
  end
end
