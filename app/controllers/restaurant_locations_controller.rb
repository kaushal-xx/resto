class RestaurantLocationsController < ApplicationController
  before_action :set_restaurant_location, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_locations
  # GET /restaurant_locations.json
  def index
    @restaurant_locations = RestaurantLocation.all
  end

  # GET /restaurant_locations/1
  # GET /restaurant_locations/1.json
  def show
  end

  # GET /restaurant_locations/new
  def new
    @restaurant_location = RestaurantLocation.new
  end

  # GET /restaurant_locations/1/edit
  def edit
  end

  # POST /restaurant_locations
  # POST /restaurant_locations.json
  def create
    @restaurant_location = RestaurantLocation.new(restaurant_location_params)

    respond_to do |format|
      if @restaurant_location.save
        format.html { redirect_to @restaurant_location, notice: 'Restaurant location was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_location }
      else
        format.html { render :new }
        format.json { render json: @restaurant_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_locations/1
  # PATCH/PUT /restaurant_locations/1.json
  def update
    respond_to do |format|
      if @restaurant_location.update(restaurant_location_params)
        format.html { redirect_to @restaurant_location, notice: 'Restaurant location was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_location }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_locations/1
  # DELETE /restaurant_locations/1.json
  def destroy
    @restaurant_location.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_locations_url, notice: 'Restaurant location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_location
      @restaurant_location = RestaurantLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_location_params
      params.require(:restaurant_location).permit(:restaurant_branch_id, :address_line1, :address_line2, :city, :state, :country, :postal_code, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
