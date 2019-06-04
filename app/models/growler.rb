class Growler < ApplicationRecord
  has_many :commandeitems, as: :item
end
