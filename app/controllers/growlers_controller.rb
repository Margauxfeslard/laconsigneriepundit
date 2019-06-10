class GrowlersController < ApplicationController
  def index         # GET /growlers
    @growlersall = current_user.commandes
                            .select { |commande| commande.etat == 'payed' }
                            .map { |c| c.commandeitems }
                            .flatten.select { |ci| ci.item_type == "Growler"}
    array = @growlersall.partition { |growler| growler.item.capacite == 1 }
    @small_growlers = array[0].count
    @big_growlers = array[1].count
    @growlers = Growler.all
  end

  def show          # GET /bieres/:id
    @growler = Growler.find(params[:id])
    @growlers = Growler.all
  end

  def new
    @growler = Growler.new
  end

  def create        # POST /bieres
    @growler = Growler.new(growler_params)
    if @growler.save
      redirect_to biere_path(@biere)
    else
      render :new
    end
  end

  def destroy
    @growler = Growler.find(params[:id])
    @growler.destroy
    redirect_to bieres_path
  end

  private

  def growler_params
    params.require(:growler).permit(:capacite, :prix)
  end
end
