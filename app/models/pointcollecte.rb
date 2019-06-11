class Pointcollecte < ApplicationRecord
  has_many :commandes
  after_validation do full_address
  end

  def full_address
    self.full_address = "#{self.adresse}, #{self.zipcode} #{self.ville}"
  end

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?
end
