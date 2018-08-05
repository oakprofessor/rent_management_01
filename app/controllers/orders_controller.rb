class OrdersController < ApplicationController
    def index
    end
  
    def show
      @rooms = Room.all.page(params[:page]).per 7
    end
  end
  