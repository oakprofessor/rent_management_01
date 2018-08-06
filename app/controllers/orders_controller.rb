class OrdersController < ApplicationController
  def index
    @orders = Order.all.page(params[:page]).per 3
  end

  def new
    @order = order.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      flash[:success] = "Success"
      redirect_to @order
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit :room_id, :customer_id, :owner_id, :date_start, :date_end, :number_person, :address,
      :number_bike, :number_motobike, :description, :state
  end

  end
  