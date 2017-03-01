class IncomesController < ApplicationController


  def new
    @income = Income.new
    p @income
  end

  def create
  p params
  p  @income = Income.create(income_params)

    redirect_to '/'
  end

  private

  def income_params
    p params
    params.require(:income).permit(:amount, :name, :date, :frequency, :actual)
  end
end
