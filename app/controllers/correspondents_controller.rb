class CorrespondentsController < ApplicationController
  # GET /correspondents
  # GET /correspondents.json
  def index
    @correspondents = Correspondent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @correspondents }
    end
  end

  # GET /correspondents/1
  # GET /correspondents/1.json
  def show
    @correspondent = Correspondent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @correspondent }
    end
  end

  # GET /correspondents/new
  # GET /correspondents/new.json
  def new
    @correspondent = Correspondent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @correspondent }
    end
  end

  # GET /correspondents/1/edit
  def edit
    @correspondent = Correspondent.find(params[:id])
  end

  # POST /correspondents
  # POST /correspondents.json
  def create
    @correspondent = Correspondent.new(params[:correspondent])

    respond_to do |format|
      if @correspondent.save
        format.html { redirect_to @correspondent, notice: 'Correspondent was successfully created.' }
        format.json { render json: @correspondent, status: :created, location: @correspondent }
      else
        format.html { render action: "new" }
        format.json { render json: @correspondent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /correspondents/1
  # PUT /correspondents/1.json
  def update
    @correspondent = Correspondent.find(params[:id])

    respond_to do |format|
      if @correspondent.update_attributes(params[:correspondent])
        format.html { redirect_to @correspondent, notice: 'Correspondent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @correspondent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correspondents/1
  # DELETE /correspondents/1.json
  def destroy
    @correspondent = Correspondent.find(params[:id])
    @correspondent.destroy

    respond_to do |format|
      format.html { redirect_to correspondents_url }
      format.json { head :no_content }
    end
  end
end
