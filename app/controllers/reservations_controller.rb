class ReservationsController < ApplicationController
  before_action :authenticate_user!
  def new
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = @hotel.reservations.build
    @user = current_user
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to hotel_reservation_path(@hotel, @reservation)
    end
  end

  def show
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = Reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :number_of_people, :name, :email, :hotel_id, :user_id)
  end
end
