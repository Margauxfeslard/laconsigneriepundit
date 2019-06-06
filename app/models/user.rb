class User < ApplicationRecord
  has_many :reviews
  has_many :commandes
  has_many :commandeitems, through: :commandes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
