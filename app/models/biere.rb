class Biere < ApplicationRecord
  belongs_to :brasserie
  has_many :reviews
  has_many :commandeitems, as: :item
end
