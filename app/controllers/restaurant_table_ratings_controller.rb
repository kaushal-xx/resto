class RestaurantTableRatingsController < ApplicationController
  before_action :set_restaurant_table_rating, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_table_ratings
  # GET /restaurant_table_ratings.json
  def index
    @restaurant_table_ratings = RestaurantTableRating.all
  end

  # GET /restaurant_table_ratings/1
  # GET /restaurant_table_ratings/1.json
  def show
  end

  # GET /restaurant_table_ratings/new
  def new
    @restaurant_table_rating = RestaurantTableRating.new
  end

  # GET /restaurant_table_ratings/1/edit
  def edit
  end

  # POST /restaurant_table_ratings
  # POST /restaurant_table_ratings.json
  def create
    @restaurant_table_rating = RestaurantTableRating.new(restaurant_table_rating_params)

    respond_to do |format|
      if @restaurant_table_rating.save
        format.html { redirect_to @restaurant_table_rating, notice: 'Restaurant table rating was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_table_rating }
      else
        format.html { render :new }
        format.json { render json: @restaurant_table_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_table_ratings/1
  # PATCH/PUT /restaurant_table_ratings/1.json
  def update
    respond_to do |format|
      if @restaurant_table_rating.update(restaurant_table_rating_params)
        format.html { redirect_to @restaurant_table_rating, notice: 'Restaurant table rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_table_rating }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_table_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_table_ratings/1
  # DELETE /restaurant_table_ratings/1.json
  def destroy
    @restaurant_table_rating.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_table_ratings_url, notice: 'Restaurant table rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_table_rating
      @restaurant_table_rating = RestaurantTableRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_table_rating_params
      params.require(:restaurant_table_rating).permit(:from_user_id, :review, :table_id, :rating, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
