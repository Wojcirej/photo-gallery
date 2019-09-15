class PhotoFileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def public_id
    "photo-gallery_uploads/#{model.uploader_id}/#{model.file.send(:original_filename)}"
  end

  def extension_whitelist
    %w(png jpg jpeg gif)
  end
end
