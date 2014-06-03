class ThermostatHistoriesController < ApplicationController
  before_action :set_thermostat_history, only: [:show, :edit, :update, :destroy]

  # GET /thermostat_histories
  # GET /thermostat_histories.json
  def index
    @thermostat_histories = ThermostatHistory.all
  end

  # GET /thermostat_histories/1
  # GET /thermostat_histories/1.json
  def show
  end

  # GET /thermostat_histories/new
  def new
    @thermostat_history = ThermostatHistory.new
    @thermostats = Thermostat.all
    #@thermostats = Thermostats.where(user_id: current_user.id)
  end

  # GET /thermostat_histories/1/edit
  def edit
  end

  # POST /thermostat_histories
  # POST /thermostat_histories.json
  def create
    @thermostat_history = ThermostatHistory.new(thermostat_history_params)

    respond_to do |format|
      if @thermostat_history.save
        format.html { redirect_to @thermostat_history.thermostat, notice: 'Thermostat history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thermostat_history }
      else
        @thermostats = Thermostat.all
        format.html { render action: 'new' }
        format.json { render json: @thermostat_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermostat_histories/1
  # PATCH/PUT /thermostat_histories/1.json
  def update
    respond_to do |format|
      if @thermostat_history.update(thermostat_history_params)
        format.html { redirect_to @thermostat_history, notice: 'Thermostat history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thermostat_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermostat_histories/1
  # DELETE /thermostat_histories/1.json
  def destroy
    @thermostat_history.destroy
    respond_to do |format|
      format.html { redirect_to thermostat_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermostat_history
      @thermostat_history = ThermostatHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermostat_history_params
      params.require(:thermostat_history).permit(:thermostat_id, :temperature, :humidity, :kw, :co2)
    end
end
