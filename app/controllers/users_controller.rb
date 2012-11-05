class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all.each { |o| to_jalali o }
  end

  def show
    @user = User.find(params[:id])
  end

end
