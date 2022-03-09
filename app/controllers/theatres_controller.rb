class TheatresController < ApplicationController
  before_action :set_theatre, only: [:show, :update, :destroy]

  # GET /theatres
  def index
    @theatres = Theatre.all

    render json: @theatres
  end

  # GET /theatres/1
  def show
    render json: @theatre
  end

  # POST /theatres
  def create
    @theatre = Theatre.new(theatre_params)

    if @theatre.save
      render json: @theatre, status: :created, location: @theatre
    else
      render json: @theatre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /theatres/1
  def update
    if @theatre.update(theatre_params)
      render json: @theatre
    else
      render json: @theatre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /theatres/1
  def destroy
    @theatre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theatre
      @theatre = Theatre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def theatre_params
      params.require(:theatre).permit(:t_name, :t_address, :t_contact)
    end
end
