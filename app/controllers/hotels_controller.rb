class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true)
  end

  def show
    @hotel = Hotel.find(params[:id])
  end
end
