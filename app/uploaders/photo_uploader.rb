# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    cloudinary_transformation height: 300, width: 400, crop: :fill
    # resize_to_fit 800, 600
  end

  version :thumb do
    cloudinary_transformation height: 90, width: 90, crop: :thumb, gravity: :face, radius: 20
  end

end
