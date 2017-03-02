class IncomesController < ApplicationController

  def index

    @income_data = Income.all

    current_user
    Income.find(current_user)

    respond_to do |format|
      format.html
      format.json { render json: @income_data }
    end

  end

  def new
    p current_user
    @income = Income.new
  end

  def create
    Income.create(income_params)
    redirect_to dashboards_path
  end

  private

  def income_params
    params.require(:income).permit(:amount, :name, :date)
  end


end
