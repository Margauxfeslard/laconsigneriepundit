class User < ApplicationRecord
  has_many :reviews
  has_many :commandes
  has_many :commandeitems, through: :commandes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_validation do
    full_address
  end

  def full_address
    self.full_address = "#{adresse}, #{zipcode} #{ville}"
  end

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
