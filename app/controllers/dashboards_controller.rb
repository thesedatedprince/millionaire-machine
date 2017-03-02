
class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @dashboard = Dashboard.new(current_user)

    p @income = @dashboard.get_income

    if no_income_stored
      flash[:notice] = 'No incomes stored'
    else
      @income
    end

    @expenditure = @dashboard.get_expenditure

    if no_expenditure_stored
      flash[:notice] = 'No expenditure stored'
    else
      @expenditure
    end

    @projection = @dashboard.get_projection

    if no_projection_stored
      flash[:notice] = 'No projection stored'
    else
      @projection
    end


    @goal = Goal.all
  

  end

private

  def no_income_stored
    @income == []
  end

  def no_expenditure_stored
    @expenditure == []
  end

  def no_projection_stored
    @projection == []
  end

end
