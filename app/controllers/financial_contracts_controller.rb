class FinancialContractsController < ApplicationController
  # GET /financial_contracts
  # GET /financial_contracts.json
  def index
    @financial_contracts = FinancialContract.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financial_contracts }
    end
  end

  # GET /financial_contracts/1
  # GET /financial_contracts/1.json
  def show
    @financial_contract = FinancialContract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financial_contract }
    end
  end

  # GET /financial_contracts/new
  # GET /financial_contracts/new.json
  def new
    @financial_contract = FinancialContract.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financial_contract }
    end
  end

  # GET /financial_contracts/1/edit
  def edit
    @financial_contract = FinancialContract.find(params[:id])
  end

  # POST /financial_contracts
  # POST /financial_contracts.json
  def create
    @financial_contract = FinancialContract.new(params[:financial_contract])

    respond_to do |format|
      if @financial_contract.save
        format.html { redirect_to @financial_contract, notice: 'Financial contract was successfully created.' }
        format.json { render json: @financial_contract, status: :created, location: @financial_contract }
      else
        format.html { render action: "new" }
        format.json { render json: @financial_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financial_contracts/1
  # PUT /financial_contracts/1.json
  def update
    @financial_contract = FinancialContract.find(params[:id])

    respond_to do |format|
      if @financial_contract.update_attributes(params[:financial_contract])
        format.html { redirect_to @financial_contract, notice: 'Financial contract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @financial_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_contracts/1
  # DELETE /financial_contracts/1.json
  def destroy
    @financial_contract = FinancialContract.find(params[:id])
    @financial_contract.destroy

    respond_to do |format|
      format.html { redirect_to financial_contracts_url }
      format.json { head :no_content }
    end
  end
end
