class IncomesController < ApplicationController


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
