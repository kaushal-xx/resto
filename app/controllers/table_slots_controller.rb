class TableSlotsController < ApplicationController
  before_action :set_table_slot, only: [:show, :edit, :update, :destroy]

  # GET /table_slots
  # GET /table_slots.json
  def index
    @table_slots = TableSlot.all
  end

  # GET /table_slots/1
  # GET /table_slots/1.json
  def show
  end

  # GET /table_slots/new
  def new
    @table_slot = TableSlot.new
  end

  # GET /table_slots/1/edit
  def edit
  end

  # POST /table_slots
  # POST /table_slots.json
  def create
    @table_slot = TableSlot.new(table_slot_params)

    respond_to do |format|
      if @table_slot.save
        format.html { redirect_to @table_slot, notice: 'Table slot was successfully created.' }
        format.json { render :show, status: :created, location: @table_slot }
      else
        format.html { render :new }
        format.json { render json: @table_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_slots/1
  # PATCH/PUT /table_slots/1.json
  def update
    respond_to do |format|
      if @table_slot.update(table_slot_params)
        format.html { redirect_to @table_slot, notice: 'Table slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_slot }
      else
        format.html { render :edit }
        format.json { render json: @table_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_slots/1
  # DELETE /table_slots/1.json
  def destroy
    @table_slot.destroy
    respond_to do |format|
      format.html { redirect_to table_slots_url, notice: 'Table slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_slot
      @table_slot = TableSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_slot_params
      params.require(:table_slot).permit(:table_id, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
