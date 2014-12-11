class RentablesController < ApplicationController
  before_action :set_rentable, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
      @rentables = Rentable.all
      @hash = Gmaps4rails.build_markers(@rentables) do |rentable, marker|
        marker.lat rentable.latitude
        marker.lng rentable.longitude
      end
  end

  def show
    respond_with(@rentable)
  end

  def search
    @rentable = Rentable.new
    Rentable.near(@rentable_params, 1)
    respond_with(@rentable)
  end

  # WTF?


  def new
    @rentable = Rentable.new
    respond_with(@rentable)
  end

  def edit
  end

  def create
    @rentable = Rentable.new(rentable_params)
    @rentable.save
    respond_with(@rentable)
  end

  def update
    @rentable.update(rentable_params)
    respond_with(@rentable)
  end

  def destroy
    @rentable.destroy
    respond_with(@rentable)
  end

  private
    def set_rentable
      @rentable = Rentable.find(params[:id])
    end

    def rentable_params
      params.require(:rentable).permit(:latitude, :longitude, :address, :description, :title, :price, :picture)
    end
end
