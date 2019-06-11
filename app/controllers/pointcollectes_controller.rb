class PointcollectesController < ApplicationController
  def index
    @commande = Commande.find(params[:commande_id])
    @pointcollectes = Pointcollecte.where.not(latitude: nil, longitude: nil)

    @markers = @pointcollectes.map do |pointcollecte|
      {
        lat: pointcollecte.latitude,
        lng: pointcollecte.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { pointcollecte: pointcollecte })
      }
    end
end

  def show
  end

  def finalize_commande
    @commande = Commande.find(params[:commande_id])
    @commande.pointcollecte = Pointcollecte.find(params[:id])
    @commande.save
    redirect_to user_commande_pointcollectes_path(current_user, @commande)
  end
end
