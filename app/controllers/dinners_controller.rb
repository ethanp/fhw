class DinnersController < ApplicationController
  before_action :set_dinner, only: [:show, :edit, :update, :destroy, :add_save_plate]
  before_action :authenticate_user!
  respond_to :html

  def add_save_plate
    if @dinner.users.include? current_user
      @dinner.users.delete current_user
    else
      @dinner.users << current_user
    end
    respond_with @dinner
  end

  def index
    @dinners = Dinner.this_week
    respond_with(@dinners)
  end

  def show
    respond_with(@dinner)
  end

  def new
    @dinner = Dinner.new
    respond_with(@dinner)
  end

  def edit
  end

  def create
    @dinner = Dinner.new(dinner_params)
    @dinner.save
    respond_with(@dinner)
  end

  def update
    @dinner.update(dinner_params)
    respond_with(@dinner)
  end

  def destroy
    @dinner.destroy
    respond_with(@dinner)
  end

  private
    def set_dinner
      @dinner = Dinner.find(params[:id])
    end

    def dinner_params
      params.require(:dinner).permit(:name, :date)
    end
end
