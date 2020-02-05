class SweepsController < ApplicationController
  before_action :set_sweep, only: [:show, :update, :destroy]

  # GET /sweeps
  def index
    @sweeps = Sweep.all

    render json: @sweeps
  end

  # GET /sweeps/1
  def show
    render json: @sweep
  end

  # POST /sweeps
  def create
    @sweep = Sweep.new(sweep_params)

    if @sweep.save
      render json: @sweep, status: :created, location: @sweep
    else
      render json: @sweep.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sweeps/1
  def update
    if @sweep.update(sweep_params)
      render json: @sweep
    else
      render json: @sweep.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sweeps/1
  def destroy
    @sweep.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweep
      @sweep = Sweep.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sweep_params
      params.require(:sweep).permit(:game_id, :player_id, :is_winner)
    end
end
