class Photo < ApplicationRecord
  self.per_page = 1
  belongs_to :uploader, class_name: "Admin"
  mount_uploader :file, PhotoFileUploader

  default_scope -> { order("created_at ASC") }

  def self.add_new_for_admin(params, admin_id)
    Photo.create(
      id: SecureRandom.uuid,
      file: params[:file],
      uploader_id: admin_id,
    )
  end

  def owner?(admin_id)
    admin_id == uploader_id
  end

  def original_filename
    return nil unless file.filename
    file.filename.split("/").last.split("_").last
  end

  def uploaded_by
    uploader.login
  end

  def uploaded_at
    created_at.strftime("%d %B %Y %H:%M:%S %Z")
  end
end
