class GrowlersController < ApplicationController
  def index         # GET /restaurants
    @growlers = Growler.all
  end

  def show          # GET /bieres/:id
    @growler = -Growler.find(params[:id])
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

  def edit          # GET /articles/:id/edit
    @growler = Growler.find(params[:id])
  end

  def update
    @growler = Growler.find(params[:id])
    @growler.update(growler_params)
    redirect_to biere_path(@biere)
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
