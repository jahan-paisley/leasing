# encoding : utf-8
class CustomersController < ApplicationController
  def initialize
    @levels = [[ 'خیابان اصلی','Ave'], ['خیابان فرعی','Street' ], ['کوچه', 'Alley'] , ['میدان' ,'Square'], ['بزرگراه','Highway'],[ 'جاده', 'Road'], ['بلوار','Boulevard'],['آزادراه', 'Freeway'],['بن بست','Deadend']]
    @address_categories = [['محل کار','Workplace'],['محل سکونت','Homeplace']]
    @gender = [['مرد', 'Male'], ['زن', 'Female']]
    @marital_status = [['متاهل', 'Married'], ['مجرد', 'Single']]
    super
  end
  
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
    @customers.each{|o| to_jalali o}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])
    #debugger
    to_jalali @customer
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
               
    @customer = Customer.new
    2.times do
      @customer.addresses.build
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
    to_jalali @customer
  end

  # POST /customers
  # POST /customers.json
  def create

    to_gregorian (params)
    ##debugger
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: (t 'success_message') }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])
    to_gregorian params
    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: (t 'success_message')}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
end
