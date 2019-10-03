class CheckinController < ApplicationController
  def index
    @checkins = Checkin.all
  end
end
