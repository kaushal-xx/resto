class OrderBillingsController < ApplicationController
  before_action :set_order_billing, only: [:show, :edit, :update, :destroy]

  # GET /order_billings
  # GET /order_billings.json
  def index
    @order_billings = OrderBilling.all
  end

  # GET /order_billings/1
  # GET /order_billings/1.json
  def show
  end

  # GET /order_billings/new
  def new
    @order_billing = OrderBilling.new
  end

  # GET /order_billings/1/edit
  def edit
  end

  # POST /order_billings
  # POST /order_billings.json
  def create
    @order_billing = OrderBilling.new(order_billing_params)

    respond_to do |format|
      if @order_billing.save
        format.html { redirect_to @order_billing, notice: 'Order billing was successfully created.' }
        format.json { render :show, status: :created, location: @order_billing }
      else
        format.html { render :new }
        format.json { render json: @order_billing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_billings/1
  # PATCH/PUT /order_billings/1.json
  def update
    respond_to do |format|
      if @order_billing.update(order_billing_params)
        format.html { redirect_to @order_billing, notice: 'Order billing was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_billing }
      else
        format.html { render :edit }
        format.json { render json: @order_billing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_billings/1
  # DELETE /order_billings/1.json
  def destroy
    @order_billing.destroy
    respond_to do |format|
      format.html { redirect_to order_billings_url, notice: 'Order billing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_billing
      @order_billing = OrderBilling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_billing_params
      params.require(:order_billing).permit(:order_billingscol, :billing_amount, :billing_method, :billing_status, :discount, :tax, :note)
    end
end
