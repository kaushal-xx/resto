class TableOcassionsController < ApplicationController
  before_action :set_table_ocassion, only: [:show, :edit, :update, :destroy]

  # GET /table_ocassions
  # GET /table_ocassions.json
  def index
    @table_ocassions = TableOcassion.all
  end

  # GET /table_ocassions/1
  # GET /table_ocassions/1.json
  def show
  end

  # GET /table_ocassions/new
  def new
    @table_ocassion = TableOcassion.new
  end

  # GET /table_ocassions/1/edit
  def edit
  end

  # POST /table_ocassions
  # POST /table_ocassions.json
  def create
    @table_ocassion = TableOcassion.new(table_ocassion_params)

    respond_to do |format|
      if @table_ocassion.save
        format.html { redirect_to @table_ocassion, notice: 'Table ocassion was successfully created.' }
        format.json { render :show, status: :created, location: @table_ocassion }
      else
        format.html { render :new }
        format.json { render json: @table_ocassion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_ocassions/1
  # PATCH/PUT /table_ocassions/1.json
  def update
    respond_to do |format|
      if @table_ocassion.update(table_ocassion_params)
        format.html { redirect_to @table_ocassion, notice: 'Table ocassion was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_ocassion }
      else
        format.html { render :edit }
        format.json { render json: @table_ocassion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_ocassions/1
  # DELETE /table_ocassions/1.json
  def destroy
    @table_ocassion.destroy
    respond_to do |format|
      format.html { redirect_to table_ocassions_url, notice: 'Table ocassion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_ocassion
      @table_ocassion = TableOcassion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_ocassion_params
      params.require(:table_ocassion).permit(:name, :description, :table_id, :ocassion_type, :booking_by, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
