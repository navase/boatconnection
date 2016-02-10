class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(params)
  end

  def show
    @reservation = Reservation.find(params)
  end

  def edit
    @reservation = Reservation.find(params)
  end

  def update
    @reservation = Reservation.find(params)
  end

  def destroy
    @reservation = Reservation.find(params)
  end
  
end
