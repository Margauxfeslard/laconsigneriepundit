class BrasseriesController < ApplicationController
  def index         # GET /restaurants
    @brasseries = Brasserie.all
  end

  def show          # GET /brasseries/:id
    @brasserie = Brasserie.find(params[:id])
  end

  def new
    @brasserie = Brasserie.new
  end

  def create        # POST /brasseries
    @brasserie = Brasserie.new(brasserie_params)
    if @brasserie.save
      redirect_to brasserie_path(@brasserie)
    else
      render :new
    end
  end

  def edit          # GET /articles/:id/edit
    @brasserie = Brasserie.find(params[:id])
  end

  def update
    @brasserie = Brasserie.find(params[:id])
    @brasserie.update(brasserie_params)
    redirect_to brasserie_path(@brasserie)
  end

  def destroy
    @brasserie = Brasserie.find(params[:id])
    @brasserie.destroy
    redirect_to brasseries_path
  end


  private

  def brasserie_params
    params.require(:brasserie).permit(
      :nom,
      :adresse,
      :logo_img,
      :description,
      :photo
      )
  end

end