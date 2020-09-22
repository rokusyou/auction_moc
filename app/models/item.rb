class Item < ApplicationRecord
  mount_uploader :image_path, ItemImagesUploader
end
