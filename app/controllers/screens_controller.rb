class ScreensController < ApplicationController
  before_action :set_screen, only: [:show, :update, :destroy]

  # GET /screens
  def index
    @screens = Screen.all

    render json: @screens
  end

  # GET /screens/1
  def show
    render json: @screen
  end

  # POST /screens
  def create
    @screen = Screen.new(screen_params)

    if @screen.save
      render json: @screen, status: :created, location: @screen
    else
      render json: @screen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /screens/1
  def update
    if @screen.update(screen_params)
      render json: @screen
    else
      render json: @screen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /screens/1
  def destroy
    @screen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen
      @screen = Screen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def screen_params
      params.require(:screen).permit(:s_name, :s_type)
    end
end
