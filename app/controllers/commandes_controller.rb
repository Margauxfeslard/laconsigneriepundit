class CommandeitemsController < ApplicationController
  def index         # GET /restaurants
    @commandes = Commande.all
  end

  def show          # GET /commandes/:id
    @commande = Commande.find(params[:id])
  end

  def new
    @commande = Commande.new
    @commandeitem = Commandeitem.new
  end

  def create        # POST /commandes
    @commande = Commande.new(commande_params)
    @commande.user = current_user
    if @commande.save
      redirect_to commande_path(@commande)
    else
      render :new
    end
  end

  def edit          # GET /articles/:id/edit
    @commande = Commande.find(params[:id])
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

  def commandeitem_params
    params.require(:commande).permit(
      :etat,
      :date_souhaitee,
      )
  end

  def commandeitem_params
    params.require(:commandeitem).permit(
      :quantite,
      :prix,
      :item,
      )
  end


end