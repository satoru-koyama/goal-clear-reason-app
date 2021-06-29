class DataController < ApplicationController

  def new
    @datum = Datum.new
  end
  def create
    require "date"
    today = Date.today
    @datum = Datum.new(datum_params)
    @datum.user_id = current_user.id
    @datum.date = today
    @datum.save
    redirect_to datum_path(@datum)
  end

  def edit
    require "date"
    today = Date.today
    @datum = Datum.find_by(date: today)
  end

  def show
    @datum = Datum.find(params[:id])
  end

  def update
    @datum = Datum.find(params[:id])
    @datum.update(datum_params)
    redirect_to datum_path(@datum)
  end

  private
  def datum_params
    params.require(:datum).permit(:clear, :reason, :goal)
  end

end
