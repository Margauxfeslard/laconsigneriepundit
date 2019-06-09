class Brasserie < ApplicationRecord
  has_many :bieres
   mount_uploader :photo, PhotoUploader
end
