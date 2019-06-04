class Commande < ApplicationRecord
  belongs_to :pointcollecte
  belongs_to :user
  has_many :commandeitems
end
