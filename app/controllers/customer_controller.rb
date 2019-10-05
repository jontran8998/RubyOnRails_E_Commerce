class CustomerController < ApplicationController
  def index
    @customers = Customer.search(params[:search]).order(:first_name).page(params[:page])
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
end
