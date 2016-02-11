class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    if @reservation = Reservation.create(reservation_params)
      redirect_to @reservation
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @offers = Offer.all
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(user_params)
      redirect_to @reservation
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params)
    if @reservation.destroy
      redirect_to offers_path
    else
      redirect_to @reservation
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:offer_id, :start_date, :end_date, :number_of_persons)
  end

end
