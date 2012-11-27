# encoding : utf-8
class CustomersController < ApplicationController
  include CustomerHelper

  respond_to :xml, :json, :html
  before_filter :authenticate_user!
  before_filter :to_gregorian_filter, :only => [ :create, :update ]

  def index
    @customers = Kaminari.paginate_array(CustomerDecorator.decorate(Customer.all)).page(params[:page]).per(10)
    render :index
  end

  def show
    @customer = CustomerDecorator.find(params[:id])
    render
  end

  def new
    @customer = Customer.new
    @customer.build
    render
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(params[:customer])
    @customer.save ?
        redirect_to(@customer, notice: (t 'success_message')) :
        render(action: "new")
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(params[:customer]) ?
        redirect_to(@customer, notice: (t 'success_message')) :
        render(action: "edit")
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_url
  end

end
