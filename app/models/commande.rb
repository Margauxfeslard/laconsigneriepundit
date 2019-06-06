class Commande < ApplicationRecord
  enum etat: { pending: 0, payed: 1 }
  scope :pending, -> { where(etat: "pending") }
  scope :payed, -> { where(etat: "payed") }

  belongs_to :pointcollecte, class_name: 'Pointcollecte', optional: true
  belongs_to :user
  has_many :commandeitems
end
