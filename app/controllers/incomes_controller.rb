class IncomesController < ApplicationController

  before_action :authenticate_user!

  def index

    @income_data = Income.where(user_id: current_user.id)

    respond_to do |format|
      format.html
      format.json { render json: @income_data }
    end

  end

  def new
    @income = Income.new
  end

  def create
    current_user.incomes.create(income_params)
    redirect_to dashboards_path
  end

  private

  def income_params
    params.require(:income).permit(:amount, :name, :date)
  end


end
