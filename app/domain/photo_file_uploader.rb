class PhotoFileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def public_id
    "photo-gallery_uploads/#{model.uploader_id}/#{model.id}_#{filename_without_extension}"
  end

  def extension_whitelist
    %w(png jpg jpeg gif)
  end

  private

  def filename_without_extension
    model.file.file.filename.gsub(".#{model.file.file.extension}", "")
  end
end
