class RestaurantPhotosController < ApplicationController
  before_action :set_restaurant_photo, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_photos
  # GET /restaurant_photos.json
  def index
    @restaurant_photos = RestaurantPhoto.all
  end

  # GET /restaurant_photos/1
  # GET /restaurant_photos/1.json
  def show
  end

  # GET /restaurant_photos/new
  def new
    @restaurant_photo = RestaurantPhoto.new
  end

  # GET /restaurant_photos/1/edit
  def edit
  end

  # POST /restaurant_photos
  # POST /restaurant_photos.json
  def create
    @restaurant_photo = RestaurantPhoto.new(restaurant_photo_params)

    respond_to do |format|
      if @restaurant_photo.save
        format.html { redirect_to @restaurant_photo, notice: 'Restaurant photo was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_photo }
      else
        format.html { render :new }
        format.json { render json: @restaurant_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_photos/1
  # PATCH/PUT /restaurant_photos/1.json
  def update
    respond_to do |format|
      if @restaurant_photo.update(restaurant_photo_params)
        format.html { redirect_to @restaurant_photo, notice: 'Restaurant photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_photo }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_photos/1
  # DELETE /restaurant_photos/1.json
  def destroy
    @restaurant_photo.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_photos_url, notice: 'Restaurant photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_photo
      @restaurant_photo = RestaurantPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_photo_params
      params.require(:restaurant_photo).permit(:name, :description, :url, :restaurant_id, :photo_type, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
