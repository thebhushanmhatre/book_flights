class FlightConfigsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_flight_config, only: [:show, :edit, :update, :destroy]

  def name
    @flight_config.flight_origin[0..2] + @flight_config.flight_destination[0..2]
  end

  def index
    @flight_configs = FlightConfig.all
  end

  def show
  end

  def new
    @flight_config = FlightConfig.new
  end

  def edit
  end

  def create
    @flight_config = FlightConfig.new(flight_config_params)

    respond_to do |format|
      if @flight_config.save
        format.html { redirect_to @flight_config, notice: 'Flight config was successfully created.' }
        format.json { render :show, status: :created, location: @flight_config }
      else
        format.html { render :new }
        format.json { render json: @flight_config.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @flight_config.update(flight_config_params)
        format.html { redirect_to @flight_config, notice: 'Flight config was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight_config }
      else
        format.html { render :edit }
        format.json { render json: @flight_config.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @flight_config.destroy
    respond_to do |format|
      format.html { redirect_to flight_configs_url, notice: 'Flight config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_flight_config
      @flight_config = FlightConfig.find(params[:id])
    end

    def flight_config_params
      params.require(:flight_config).permit(:flight_origin, :flight_destination, :arrival_time, :departure_time, :first_class_price, :business_class_price, :economy_class_price)
    end
end
