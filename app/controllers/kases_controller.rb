class KasesController < ApplicationController
  # GET /kases
  # GET /kases.json
  def index
    @kases = Kase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kases }
    end
  end

  # GET /kases/1
  # GET /kases/1.json
  def show
    @kase = Kase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kase }
    end
  end

  # GET /kases/new
  # GET /kases/new.json
  def new
    @kase = Kase.new
    @kase.build_contract
    @kase.contract.build_property
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kase }
    end
  end

  # GET /kases/1/edit
  def edit
    @kase = Kase.find(params[:id])
  end

  # POST /kases
  # POST /kases.json
  def create
    @kase = Kase.new(params[:kase])

    respond_to do |format|
      if @kase.save
        format.html { redirect_to @kase, notice: 'Kase was successfully created.' }
        format.json { render json: @kase, status: :created, location: @kase }
      else
        format.html { render action: "new" }
        format.json { render json: @kase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kases/1
  # PUT /kases/1.json
  def update
    @kase = Kase.find(params[:id])

    respond_to do |format|
      if @kase.update_attributes(params[:kase])
        format.html { redirect_to @kase, notice: 'Kase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kases/1
  # DELETE /kases/1.json
  def destroy
    @kase = Kase.find(params[:id])
    @kase.destroy

    respond_to do |format|
      format.html { redirect_to kases_url }
      format.json { head :no_content }
    end
  end
end
