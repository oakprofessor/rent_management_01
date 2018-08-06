class Admin::HomesController < ApplicationController
  layout "admin"
  before_action :set_home, only: [:edit, :update, :destroy]
  def index
    @homes = Home.where(user_id: current_user).page(params[:page]).per Settings.per_page
  end
 # GET /homes/new
  def new
    @admin_home = Home.new
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    @admin_home = Home.new(admin_home_params)

    respond_to do |format|
      if @admin_home.save
        format.html { redirect_to @admin_home, notice: 'home was successfully created.' }
        format.json { render :show, status: :created, location: @admin_home }
      else
        format.html { render :new }
        format.json { render json: @admin_home.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def room
    @rooms = Room.where(home_id: params[:id])
  end

  private
    def set_home
      @home = home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_home_params
      params.require(:home).permit(:address, :room_number, :room_empty, :description, :user_id)
    end
end
