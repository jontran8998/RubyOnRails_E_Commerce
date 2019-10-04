class CheckinController < ApplicationController
  def index
    @checkins = Checkin.order(:date).page(params[:page])
  end

  def show
    @checkin = Checkin.find(params[:id])
  end
end
