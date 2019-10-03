class CheckinController < ApplicationController
  def index
    @checkins = Checkin.all
  end

  def show
    @checkin = Checkin.find(params[:id])
  end
end
