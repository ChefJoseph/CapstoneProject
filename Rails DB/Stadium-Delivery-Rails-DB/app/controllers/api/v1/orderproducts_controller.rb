class OrderproductsController < ApplicationController
  before_action :set_orderproduct, only: %i[ show edit update destroy ]

  # GET /orderproducts
  def index
    @orderproducts = Orderproduct.all
  end

  # GET /orderproducts/1
  def show
  end

  # GET /orderproducts/new
  def new
    @orderproduct = Orderproduct.new
  end

  # GET /orderproducts/1/edit
  def edit
  end

  # POST /orderproducts
  def create
    @orderproduct = Orderproduct.new(orderproduct_params)

    if @orderproduct.save
      redirect_to @orderproduct, notice: "Orderproduct was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orderproducts/1
  def update
    if @orderproduct.update(orderproduct_params)
      redirect_to @orderproduct, notice: "Orderproduct was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /orderproducts/1
  def destroy
    @orderproduct.destroy
    redirect_to orderproducts_url, notice: "Orderproduct was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderproduct
      @orderproduct = Orderproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orderproduct_params
      params.require(:orderproduct).permit(:order_id, :product_id)
    end
end
