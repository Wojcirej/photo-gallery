FactoryBot.define do
  factory :photo do
    file { Rack::Test::UploadedFile.new(File.join(Rails.root, "spec", "fixtures", "example.jpg"), "image/jpeg") }
    uploader_id
  end
end
