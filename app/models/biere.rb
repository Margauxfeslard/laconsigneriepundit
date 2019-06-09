class Biere < ApplicationRecord
  belongs_to :brasserie
  has_many :reviews
  has_many :commandeitems, as: :item
  mount_uploader :logo_img, PhotoUploader
end
