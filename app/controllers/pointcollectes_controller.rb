class PointcollectesController < ApplicationController
  def index
    @commande = Commande.find(params[:commande_id])
    @pointcollectes = Pointcollecte.where.not(latitude: nil, longitude: nil)

    @markers = @pointcollectes.map do |pointcollecte|
      {
        lat: pointcollecte.latitude,
        lng: pointcollecte.longitude
      }
    end

  end

  def show
  end
end

private

def commande_params
  params.require(:commande).permit(:etat, :date_souhaitee)
end