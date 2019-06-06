class CommandesController < ApplicationController
  def index         # GET /restaurants
    @commandes = Commande.all
  end

  def show          # GET /commandes/:id
    @commande = Commande.find(params[:id])
  end

  # def new
  #   @commande = Commande.new
  # end

  def create # POST /commandes
    @commande = Commande.new(user: current_user, etat: 0)
    if @commande.save
      # créer les commande items
      bieres = Biere.all
      bieres.each do |biere|
        quantite = params[:items][biere.id.to_s].to_i
        if quantite > 0
          prix = quantite * biere.prix_par_litre
          ci = Commandeitem.create(quantite: quantite, item: biere, commande: @commande, prix: prix)
        end
      end

      redirect_to commande_path(@commande)
    else
      render :new
    end
  end

  def edit # GET /articles/:id/edit
    @commande = Commande.find(params[:id])
  end

  def additem
    raise
    params[:commande_id]
    params[:item_id]
  end

  def update
    @commande = Commande.find(params[:id])
    @commande.update(commande_params)
    redirect_to commande_path(@commande)
  end

  def destroy
    @commande = Commande.find(params[:id])
    @commande.destroy
    redirect_to commandes_path
  end

  private

  def commande_params
    params.require(:commande).permit(:etat, :date_souhaitee)
  end
end
