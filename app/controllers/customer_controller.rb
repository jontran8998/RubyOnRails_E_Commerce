class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end
end
