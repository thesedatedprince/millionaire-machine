class IncomesController < ApplicationController

  def index

    @income_data = Income.all

    respond_to do |format|
      format.html
      format.json { render json: @income_data }
    end

  end


  def new
    @income = Income.new
  end

  def create
    Income.create(income_params)
    redirect_to '/'
  end

  private

  def income_params
    params.require(:income).permit(:amount, :name, :date)
  end


end
