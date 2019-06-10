class Growler < ApplicationRecord
  has_many :commandeitems, as: :item
  monetize :price_cents
end
