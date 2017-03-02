
class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @dashboard = Dashboard.new(current_user)

    p @income = @dashboard.get_income

    if no_income_stored
      flash[:notice] = 'No incomes stored'
    else
      p "in controller"
      p @income
    end


    @goal = Goal.all
    # @income = Income.all
    @expenditure = Expenditure.all
  end

private

  def no_income_stored
    @income == []
  end

end
