class Commande < ApplicationRecord
  belongs_to :pointcollecte, class_name: 'Pointcollecte', optional: true
  belongs_to :user
  has_many :commandeitems
end
