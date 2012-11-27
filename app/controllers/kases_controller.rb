class KasesController < ApplicationController
  respond_to :xml, :json, :html
  before_filter :authenticate_user!
  before_filter :to_gregorian_filter, :only => [:create, :update]

  def index
    @kases = Kaminari.paginate_array(KaseDecorator.decorate(Kase.all)).page(params[:page]).per(10)
    render :index
  end

  def show
    @kase = KaseDecorator.find(params[:id])
    render
  end

  def new
    @kase = Kase.new
    @kase.build
    render
  end

  def edit
    @kase = Kase.find(params[:id])
  end

  def create
    @kase = Kase.new(params[:kase])
    if @kase.save
      redirect_to @kase, notice: t('success_message')
    else
      render action: "new"
    end
  end


  def update
    @kase = Kase.find(params[:id])
    if @kase.update_attributes(params[:kase])
      redirect_to @kase, notice: t('success_message')
    else
      render action: "edit"
    end
  end

  def destroy
    @kase = Kase.find(params[:id])
    @kase.destroy
    redirect_to kases_url
  end

end
