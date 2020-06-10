class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new()
  end

  def create
    @flat = Flat.new(params_flat)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render 'new'
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.new(params_flat)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render 'new'
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.delete
    redirect_to flats_path
  end

  private

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :img_path)
  end
end
