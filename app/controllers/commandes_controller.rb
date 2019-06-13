class CommandesController < ApplicationController
  def index # GET /restaurants
    @commandes = Commande.all
  end

  def show # GET /commandes/:id
    @commande = current_user.commandes.pending.find(params[:id])
  end

  def create # POST /commandes
    @commande = Commande.new(user: current_user, etat: 0)
    @commande.user = current_user
    @commande.etat = "pending"

    if @commande.save
      redirect_to growlers_user_commande_path(current_user, @commande)
    else
      render :new
    end
  end

  def edit
    @commande = Commande.find(params[:id])
  end

  # def additem
  #   params[:commande_id]
  #   params[:item_id]
  # end

  def update
    @commande = Commande.find(params[:id])
    @commande.update(commande_params)
    redirect_to commande_path(@commande)
  end

  def add_growlers
    @commande = Commande.find(params[:id])
    create_bieres_items(@commande)
    create_growlers_items(@commande)
    redirect_to user_commande_path(current_user, @commande)
    calcul_amount(@commande)
  end

  def calcul_amount(_commande)
    @commande.commandeitems.each do |ci|
      @commande.amount += ci.price
    end
    @commande.save
  end

  def growlers_show
    @commande = Commande.find(params[:id])
    stockgrowler = { Growler.first.id => 0, Growler.second.id => 0 }
    current_user.commandeitems.where(item_type: "Growler").each do |ci|
      if ci.commande.etat = "payed"
        if ci.item_id == Growler.first.id
          stockgrowler[Growler.first.id] += ci.quantite
        else
          stockgrowler[Growler.second.id] += ci.quantite
        end
      end
    end
    @small_growlers = stockgrowler[Growler.second.id]
    @big_growlers = stockgrowler[Growler.first.id]
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

  def create_bieres_items(_commande)
    bieres = Biere.all
    bieres.each do |biere|
      quantite = (params[:items][biere.id.to_s]).to_i
      if quantite > 0
        prix = quantite * biere.price
        ci = Commandeitem.create(quantite: quantite, item: biere, commande: @commande, price: prix)
      end
    end
    # /users/:user_id/commandes/:id/growlers
  end

  def create_growlers_items(commande)
    growlers = Growler.all
    growlers.each do |growler|
      if growler.capacite == 2
        echange2L = params[:ech2L].to_i
        quantite = params[:add2L].to_i
        prix = quantite * growler.price
        if quantite >= 0
          ci = Commandeitem.create(quantite: quantite, item: growler, commande: commande, price: prix, echange2L: echange2L)
        end
      elsif growler.capacite == 1
        quantite = params[:add1L].to_i
        echange1L = params[:ech1L].to_i
        prix = quantite * growler.price
        if quantite >= 0
          ci = Commandeitem.create(quantite: quantite, item: growler, commande: commande, price: prix, echange1L: echange1L)
          end
      end
    end
    end
end
