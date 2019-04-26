class RestaurantFloorPlansController < ApplicationController
  before_action :set_restaurant_floor_plan, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_floor_plans
  # GET /restaurant_floor_plans.json
  def index
    @restaurant_floor_plans = RestaurantFloorPlan.all
  end

  # GET /restaurant_floor_plans/1
  # GET /restaurant_floor_plans/1.json
  def show
  end

  # GET /restaurant_floor_plans/new
  def new
    @restaurant_floor_plan = RestaurantFloorPlan.new
  end

  # GET /restaurant_floor_plans/1/edit
  def edit
  end

  # POST /restaurant_floor_plans
  # POST /restaurant_floor_plans.json
  def create
    @restaurant_floor_plan = RestaurantFloorPlan.new(restaurant_floor_plan_params)

    respond_to do |format|
      if @restaurant_floor_plan.save
        format.html { redirect_to @restaurant_floor_plan, notice: 'Restaurant floor plan was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_floor_plan }
      else
        format.html { render :new }
        format.json { render json: @restaurant_floor_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_floor_plans/1
  # PATCH/PUT /restaurant_floor_plans/1.json
  def update
    respond_to do |format|
      if @restaurant_floor_plan.update(restaurant_floor_plan_params)
        format.html { redirect_to @restaurant_floor_plan, notice: 'Restaurant floor plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_floor_plan }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_floor_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_floor_plans/1
  # DELETE /restaurant_floor_plans/1.json
  def destroy
    @restaurant_floor_plan.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_floor_plans_url, notice: 'Restaurant floor plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_floor_plan
      @restaurant_floor_plan = RestaurantFloorPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_floor_plan_params
      params.require(:restaurant_floor_plan).permit(:restaurant_id, :type, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
