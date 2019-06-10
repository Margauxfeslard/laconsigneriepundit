class Commandeitem < ApplicationRecord
  belongs_to :commande
  belongs_to :item, polymorphic: true
  monetize :price_cents
end
