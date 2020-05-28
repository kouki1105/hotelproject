class HotelsController < ApplicationController
    before_action :ranking
  def ranking
    @ranking = Hotel.limit(5)
  end
  def index
    @hotels = Hotel.all
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true)
  end

  def show
    @hotel = Hotel.find(params[:id])
  end
end
