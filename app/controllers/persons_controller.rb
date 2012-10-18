class PersonsController < ApplicationController
  # GET /persons
  # GET /persons.json
  def index
    @persons = Person.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @persons }
    end
  end

  # GET /persons/1
  # GET /persons/1.json
  def show
    @person = Person.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  # GET /persons/new
  # GET /persons/new.json
  def new
    @person = Person.new
    2.times do
      @person.addresses.build
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person }
    end
  end

  # GET /persons/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /persons
  # POST /persons.json
  def create
    debugger
    to_gregorian (params)
    @person = Person.new(params[:person])

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render json: @person, status: :created, location: @person }
      else
        format.html { render action: "new" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /persons/1
  # PUT /persons/1.json
  def update
    @person = Person.find(params[:id])

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persons/1
  # DELETE /persons/1.json
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.html { redirect_to persons_url }
      format.json { head :no_content }
    end
  end
end
