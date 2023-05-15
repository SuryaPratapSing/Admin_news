class Admin < ApplicationRecord
    has_many_attached :images
    has_many_attached :banner
    mount_uploader :video, VideoUploader
end
