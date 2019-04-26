class RestaurantMusicsController < ApplicationController
  before_action :set_restaurant_music, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_musics
  # GET /restaurant_musics.json
  def index
    @restaurant_musics = RestaurantMusic.all
  end

  # GET /restaurant_musics/1
  # GET /restaurant_musics/1.json
  def show
  end

  # GET /restaurant_musics/new
  def new
    @restaurant_music = RestaurantMusic.new
  end

  # GET /restaurant_musics/1/edit
  def edit
  end

  # POST /restaurant_musics
  # POST /restaurant_musics.json
  def create
    @restaurant_music = RestaurantMusic.new(restaurant_music_params)

    respond_to do |format|
      if @restaurant_music.save
        format.html { redirect_to @restaurant_music, notice: 'Restaurant music was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_music }
      else
        format.html { render :new }
        format.json { render json: @restaurant_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_musics/1
  # PATCH/PUT /restaurant_musics/1.json
  def update
    respond_to do |format|
      if @restaurant_music.update(restaurant_music_params)
        format.html { redirect_to @restaurant_music, notice: 'Restaurant music was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_music }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_musics/1
  # DELETE /restaurant_musics/1.json
  def destroy
    @restaurant_music.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_musics_url, notice: 'Restaurant music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_music
      @restaurant_music = RestaurantMusic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_music_params
      params.require(:restaurant_music).permit(:name, :description, :restaurant_id, :music_type, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
