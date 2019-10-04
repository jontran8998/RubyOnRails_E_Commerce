class CustomerController < ApplicationController
  def index
    @customers = Customer.all.order(:first_name).page(params[:page])
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
end
