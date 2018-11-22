class FacilitiesController < ApplicationController
  def index
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)

    if @facility.save
      flash[:notice] = 'Facility has been created.'
      redirect_to @facility
    else
      # nothing yet
    end

    def show
      @facility = Facility.find(params[:id])
    end
  end

  private

  def facility_params
    params.require(:facility).permit(:name, :start, :number_of_floors, :ceiling_height, :underground_garage, :description)
  end
end
