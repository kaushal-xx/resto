class RestaurantTablesController < ApplicationController
  before_action :set_restaurant_table, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_tables
  # GET /restaurant_tables.json
  def index
    @restaurant_tables = RestaurantTable.all
  end

  # GET /restaurant_tables/1
  # GET /restaurant_tables/1.json
  def show
  end

  # GET /restaurant_tables/new
  def new
    @restaurant_table = RestaurantTable.new
  end

  # GET /restaurant_tables/1/edit
  def edit
  end

  # POST /restaurant_tables
  # POST /restaurant_tables.json
  def create
    @restaurant_table = RestaurantTable.new(restaurant_table_params)

    respond_to do |format|
      if @restaurant_table.save
        format.html { redirect_to @restaurant_table, notice: 'Restaurant table was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_table }
      else
        format.html { render :new }
        format.json { render json: @restaurant_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_tables/1
  # PATCH/PUT /restaurant_tables/1.json
  def update
    respond_to do |format|
      if @restaurant_table.update(restaurant_table_params)
        format.html { redirect_to @restaurant_table, notice: 'Restaurant table was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_table }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_tables/1
  # DELETE /restaurant_tables/1.json
  def destroy
    @restaurant_table.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_tables_url, notice: 'Restaurant table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_table
      @restaurant_table = RestaurantTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_table_params
      params.require(:restaurant_table).permit(:name, :description, :max_sitting, :restaurant_id, :booking_status, :booking_id, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
