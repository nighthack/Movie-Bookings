class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  # GET /bookings
  def index
    @bookings = Booking.all

    render json: @bookings.booking_params
  end

  # GET /bookings/1
  def show
    headPassword = request.headers['Pass']
    booked = User.find(params[:id])
    
    if booked.password.include? headPassword
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    
    show = Show.find(booking_params[:show_id])

    if @booking.save
      if show.av_seats.include? @booking.seat
        show.oc_seats << @booking.seat
        show.av_seats.delete @booking.seat
        show.save
      end
      render json: @booking, status: :created, location: @booking
        

    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:show_id, :user_id, :seat, :screen_id)
    end
end
