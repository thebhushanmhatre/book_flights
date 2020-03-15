class PnrsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_pnr, only: [:show, :edit, :update, :destroy]

  def index
    @pnrs = Pnr.all
  end

  def show
  end

  def new
    if current_user && current_user.is_admin
      @pnr = Pnr.new
    else
      redirect_to pnrs_url, notice: "Sorry, you don't have the rights"
    end
  end

  def edit
  end

  def create
    @pnr = Pnr.new(pnr_params)

    respond_to do |format|
      if @pnr.save
        format.html { redirect_to @pnr, notice: 'Pnr was successfully created.' }
        format.json { render :show, status: :created, location: @pnr }
      else
        format.html { render :new }
        format.json { render json: @pnr.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pnr.update(pnr_params)
        format.html { redirect_to @pnr, notice: 'Pnr was successfully updated.' }
        format.json { render :show, status: :ok, location: @pnr }
      else
        format.html { render :edit }
        format.json { render json: @pnr.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pnr.destroy
    respond_to do |format|
      format.html { redirect_to pnrs_url, notice: 'Pnr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pnr
      @pnr = Pnr.find(params[:id])
    end

    def pnr_params
      params.require(:pnr).permit(:seat_class, :booking_id, :flight_id)
    end
end
