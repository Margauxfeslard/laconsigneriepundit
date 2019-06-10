class BieresController < ApplicationController
  def index         # GET /restaurants
    @bieres = Biere.all
    # @commande = Commande.create(user: current_user, etat: 0)
  end

  def show          # GET /bieres/:id
    @biere = Biere.find(params[:id])
    @reviews = @biere.reviews
  end

  def new
    @biere = Biere.new
  end

  def create        # POST /bieres
    @biere = Biere.new(biere_params)
    if @biere.save
      redirect_to biere_path(@biere)
    else
      render :new
    end
  end

  def edit          # GET /articles/:id/edit
    @biere = Biere.find(params[:id])
  end

  def update
    @biere = Biere.find(params[:id])
    @biere.update(biere_params)
    redirect_to biere_path(@biere)
  end

  def destroy
    @biere = Biere.find(params[:id])
    @biere.destroy
    redirect_to bieres_path
  end


  private

  def biere_params
    params.require(:biere).permit(
      :nom,
      :logo_img,
      :description,
      :type,
      :couleur,
      :taux_alcool,
      :taux_houblon,
      :taux_malt,
      :prix_par_litre,
      )
  end

end
