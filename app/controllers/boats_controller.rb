class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  # Define a empty boat form
  def new
    @boat = Boat.new
  end

  # Create a boat from the boat form params
  def create
    if @boat = Boat.create(boat_params)
      # Redirect_to action
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])

    if @boat.update(boat_params)
      redirect_to @boat
    else
      render :edit
    end
  end

  def destroy
    @boat = Boat.find (params[:id])

    if @boat.destroy
      redirect_to root_path
    else
      redirect_to @boat
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :boat_type, :capacity, :drive)
  end
end
