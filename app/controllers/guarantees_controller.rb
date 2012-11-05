class GuaranteesController < ApplicationController
  # GET /guarantees
  # GET /guarantees.json
  def index
    @guarantees = Guarantee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guarantees }
    end
  end

  # GET /guarantees/1
  # GET /guarantees/1.json
  def show
    @guarantee = Guarantee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guarantee }
    end
  end

  # GET /guarantees/new
  # GET /guarantees/new.json
  def new
    @guarantee = Guarantee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guarantee }
    end
  end

  # GET /guarantees/1/edit
  def edit
    @guarantee = Guarantee.find(params[:id])
  end

  # POST /guarantees
  # POST /guarantees.json
  def create
    @guarantee = Guarantee.new(params[:guarantee])

    respond_to do |format|
      if @guarantee.save
        format.html { redirect_to @guarantee, notice: 'Guarantee was successfully created.' }
        format.json { render json: @guarantee, status: :created, location: @guarantee }
      else
        format.html { render action: "new" }
        format.json { render json: @guarantee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guarantees/1
  # PUT /guarantees/1.json
  def update
    @guarantee = Guarantee.find(params[:id])

    respond_to do |format|
      if @guarantee.update_attributes(params[:guarantee])
        format.html { redirect_to @guarantee, notice: 'Guarantee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guarantee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guarantees/1
  # DELETE /guarantees/1.json
  def destroy
    @guarantee = Guarantee.find(params[:id])
    @guarantee.destroy

    respond_to do |format|
      format.html { redirect_to guarantees_url }
      format.json { head :no_content }
    end
  end
end
