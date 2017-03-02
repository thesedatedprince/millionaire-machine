
class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @dashboard = Dashboard.new(current_user)

    @income = @dashboard.get_income

    if no_record_stored(@income)
      flash[:notice] = 'No incomes stored'
    else
      @income
    end

    @expenditure = @dashboard.get_expenditure

    if no_record_stored(@expenditure)
      flash[:notice] = 'No expenditure stored'
    else
      @expenditure
    end

    @projection = @dashboard.get_projection

    if no_record_stored(@projection)
      flash[:notice] = 'No projection stored'
    else
      @projection
    end

    @goal = @dashboard.get_goal

    if no_record_stored(@goal)
      flash[:notice] = 'No goal stored'
    else
      @goal
    end

  end

private

  def no_record_stored(record)
    record == []
  end

end
