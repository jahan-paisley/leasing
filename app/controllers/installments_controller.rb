class InstallmentsController < ApplicationController
  # GET /installments
  # GET /installments.json
  def index
    @installments = Installment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @installments }
    end
  end

  # GET /installments/1
  # GET /installments/1.json
  def show
    @installment = Installment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @installment }
    end
  end

  # GET /installments/new
  # GET /installments/new.json
  def new
    @installment = Installment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @installment }
    end
  end

  # GET /installments/1/edit
  def edit
    @installment = Installment.find(params[:id])
  end

  # POST /installments
  # POST /installments.json
  def create
    @installment = Installment.new(params[:installment])

    respond_to do |format|
      if @installment.save
        format.html { redirect_to @installment, notice: 'Installment was successfully created.' }
        format.json { render json: @installment, status: :created, location: @installment }
      else
        format.html { render action: "new" }
        format.json { render json: @installment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /installments/1
  # PUT /installments/1.json
  def update
    @installment = Installment.find(params[:id])

    respond_to do |format|
      if @installment.update_attributes(params[:installment])
        format.html { redirect_to @installment, notice: 'Installment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @installment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installments/1
  # DELETE /installments/1.json
  def destroy
    @installment = Installment.find(params[:id])
    @installment.destroy

    respond_to do |format|
      format.html { redirect_to installments_url }
      format.json { head :no_content }
    end
  end
end
