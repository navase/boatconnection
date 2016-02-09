class OfferingsController < ApplicationController

  #show all offers; we don't use this but page exists
  def index
    @offers = Offering.all
  end

  def new
    @offer = Offering.new
    @boats = Boat.all
  end

  def create
    if @offer = Offering.create(offer_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @offer = Offering.find(params[:id])
  end

  def edit
    @offer = Offering.find(params[:id])
    @boats = Boat.all
  end

  def update
    @offer = Offering.find(params[:id])
    if @offer.update(offer_params)
      redirect_to @offer
    elsif
      render :edit
    end

  end



  private

  def offer_params
    params.require(:offering).permit(:price, :period_start, :period_end, :location, :boat_id)
  end

end
