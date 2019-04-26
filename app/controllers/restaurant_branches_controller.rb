class RestaurantBranchesController < ApplicationController
  before_action :set_restaurant_branch, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_branches
  # GET /restaurant_branches.json
  def index
    @restaurant_branches = RestaurantBranch.all
  end

  # GET /restaurant_branches/1
  # GET /restaurant_branches/1.json
  def show
  end

  # GET /restaurant_branches/new
  def new
    @restaurant_branch = RestaurantBranch.new
  end

  # GET /restaurant_branches/1/edit
  def edit
  end

  # POST /restaurant_branches
  # POST /restaurant_branches.json
  def create
    @restaurant_branch = RestaurantBranch.new(restaurant_branch_params)

    respond_to do |format|
      if @restaurant_branch.save
        format.html { redirect_to @restaurant_branch, notice: 'Restaurant branch was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_branch }
      else
        format.html { render :new }
        format.json { render json: @restaurant_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_branches/1
  # PATCH/PUT /restaurant_branches/1.json
  def update
    respond_to do |format|
      if @restaurant_branch.update(restaurant_branch_params)
        format.html { redirect_to @restaurant_branch, notice: 'Restaurant branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_branch }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_branches/1
  # DELETE /restaurant_branches/1.json
  def destroy
    @restaurant_branch.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_branches_url, notice: 'Restaurant branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_branch
      @restaurant_branch = RestaurantBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_branch_params
      params.require(:restaurant_branch).permit(:name, :description, :brand_logo_url, :phone, :email, :restaurant_id, :location_id, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
