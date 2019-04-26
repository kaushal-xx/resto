class TableBookingsController < ApplicationController
  before_action :set_table_booking, only: [:show, :edit, :update, :destroy]

  # GET /table_bookings
  # GET /table_bookings.json
  def index
    @table_bookings = TableBooking.all
  end

  # GET /table_bookings/1
  # GET /table_bookings/1.json
  def show
  end

  # GET /table_bookings/new
  def new
    @table_booking = TableBooking.new
  end

  # GET /table_bookings/1/edit
  def edit
  end

  # POST /table_bookings
  # POST /table_bookings.json
  def create
    @table_booking = TableBooking.new(table_booking_params)

    respond_to do |format|
      if @table_booking.save
        format.html { redirect_to @table_booking, notice: 'Table booking was successfully created.' }
        format.json { render :show, status: :created, location: @table_booking }
      else
        format.html { render :new }
        format.json { render json: @table_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_bookings/1
  # PATCH/PUT /table_bookings/1.json
  def update
    respond_to do |format|
      if @table_booking.update(table_booking_params)
        format.html { redirect_to @table_booking, notice: 'Table booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_booking }
      else
        format.html { render :edit }
        format.json { render json: @table_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_bookings/1
  # DELETE /table_bookings/1.json
  def destroy
    @table_booking.destroy
    respond_to do |format|
      format.html { redirect_to table_bookings_url, notice: 'Table booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_booking
      @table_booking = TableBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_booking_params
      params.require(:table_booking).permit(:qr_code, :booking_date, :booking_time_from, :booking_time_to, :table_id, :booking_by, :status, :creator_id, :modifier_id, :create_time, :modified_time)
    end
end
