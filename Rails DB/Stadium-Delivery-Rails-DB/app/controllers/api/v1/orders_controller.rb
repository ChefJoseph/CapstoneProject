class Api::V1::OrdersController < ApplicationController
  # before_action :set_order, only: %i[ show update destroy ]
  # before_action :authenticate_api_v1_user!, only: %i[index show create update destroy]
  # before_action :set_user_by_token, only: [:destroy]
  # before_action :find_product, only: %i[create update]
  # GET /orders
  def index
    @orders = Order.all.order(created_at: :desc)

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    new = Order.create(order_params)
    params[:products].each do |prod|
      new.orderproducts.create({ product_id: prod[:id]})
    end
    # @order = Order.new(order_params)
    # # @order.user_id = user.id 

    # if @order.save
    #   render json: @order, status: :created
   
      render json: new, status: :created
    
  end
  # def create
  #   order = current_user.orders.create
  #   order.items.create(product: @product)
  #   render json: { message: 'Your order was created...', order: {id: order.id} }, status: 201
  # end

  # PATCH/PUT /orders/1
  # def update
  #   if @order.update(order_params)
  #     render json: @order
  #   else
  #     render json: @order.errors, status: :unprocessable_entity
  #   end
  # end

  def update
    order = Order.find(params[:id])
    order.items.create(product: @product)
    render json: { message: 'Your order was updated...' }
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.permit(:product_id, :user_id, :sales_tax, :fees, :tips, :total_price, :order_number)
    end

    def find_product
      @product = Product.find(params[:product_id])
    end
end
