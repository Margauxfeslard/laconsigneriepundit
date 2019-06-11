class CommandesController < ApplicationController
  def index         # GET /restaurants
    @commandes = Commande.all
  end

  def show          # GET /commandes/:id
    @commande = current_user.commandes.pending.find(params[:id])
  end

  # def new
  #   @commande = Commande.new
  # end

  def create # POST /commandes
    @commande = Commande.new(user: current_user, etat: 0)
    @commande.user = current_user
    @commande.etat = "pending"

    if @commande.save
      # créer les commande items
      create_bieres_items
    else
      render :new
    end
  end

  def edit # GET /articles/:id/edit
    @commande = Commande.find(params[:id])
  end

  def additem
    params[:commande_id]
    params[:item_id]
  end

  def update
    @commande = Commande.find(params[:id])
    @commande.update(commande_params)
    redirect_to commande_path(@commande)
  end

  def add_growlers
    @commande = Commande.find(params[:id])
    create_growlers_items(@commande)
    redirect_to user_commande_path(current_user, @commande)
    calcul_amount(@commande)
  end

  def calcul_amount
    @commande.commandeitems.each do |ci|
      @commande.amount_cents += ci.price_cents
    end
    @commande.save
  end

  def growlers_show # GET /restaurants
    # @growlers = Growler.all
    @commande = Commande.find(params[:id])
    @growlersall = current_user.commandes
                               .select { |commande| commande.etat == 'payed' }
                               .map(&:commandeitems)
                               .flatten.select { |ci| ci.item_type == "Growler" }
    array = @growlersall.partition { |growler| growler.item.capacite == 1 }
    @small_growlers = array[0].count
    @big_growlers = array[1].count
    @growlers = Growler.all
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

  def create_bieres_items
    bieres = Biere.all
    bieres.each do |biere|
      quantite = params[:items][biere.id.to_s].to_i
      if quantite > 0
        prix = quantite * biere.price_cents
        ci = Commandeitem.create(quantite: quantite, item: biere, commande: @commande, price: prix)
      end
    end

    # /users/:user_id/commandes/:id/growlers
    redirect_to growlers_user_commande_path(current_user, @commande)
  end

  def create_growlers_items(commande)
    growlers = Growler.all
    growlers.each do |growler|
      if growler.capacite == 2
        quantite = params[:add2L].to_i
        prix = quantite * growler.price_cents
        if quantite > 0
          ci = Commandeitem.create(quantite: quantite, item: growler, commande: commande, price: prix)
        end
      elsif growler.capacite == 1
        quantite = params[:add1L].to_i
        prix = quantite * growler.price_cents
        if quantite > 0
          ci = Commandeitem.create(quantite: quantite, item: growler, commande: commande, price: prix)
          end
      end
    end
    end
end
