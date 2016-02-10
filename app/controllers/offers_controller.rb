class OffersController < ApplicationController
  #show all offers; we don't use this but page exists
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
    @boats = Boat.all
  end

  def create
    if @offer = Offer.create(offer_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit
    @offer = Offer.find(params[:id])
    @boats = Boat.all
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to @offer
    elsif
      render :edit
    end

  end

  private

  def offer_params
    params.require(:offer).permit(:boat_id, :price, :period_start, :period_end, :location)
  end
end
