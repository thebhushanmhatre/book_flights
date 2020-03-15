class SeatMapsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_seat_map, only: [:show, :edit, :update, :destroy]

  def index
    @seat_maps = SeatMap.all
  end

  def show
  end

  def new
    if current_user && current_user.is_admin
      @seat_map = SeatMap.new
    else
      redirect_to seat_maps_url, notice: "Sorry, you don't have the rights"
    end
  end

  def edit
  end

  def create
    @seat_map = SeatMap.new(seat_map_params)

    respond_to do |format|
      if @seat_map.save
        format.html { redirect_to @seat_map, notice: 'Seat map was successfully created.' }
        format.json { render :show, status: :created, location: @seat_map }
      else
        format.html { render :new }
        format.json { render json: @seat_map.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @seat_map.update(seat_map_params)
        format.html { redirect_to @seat_map, notice: 'Seat map was successfully updated.' }
        format.json { render :show, status: :ok, location: @seat_map }
      else
        format.html { render :edit }
        format.json { render json: @seat_map.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @seat_map.destroy
    respond_to do |format|
      format.html { redirect_to seat_maps_url, notice: 'Seat map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_seat_map
      @seat_map = SeatMap.find(params[:id])
    end

    def seat_map_params
      params.require(:seat_map).permit(:first_class_rows, :first_class_seats_in_a_row, :business_class_rows, :business_class_seats_in_a_row, :economy_class_rows, :economy_class_seats_in_a_row)
    end
end
