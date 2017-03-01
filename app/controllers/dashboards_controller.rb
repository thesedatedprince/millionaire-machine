
class DashboardsController < ApplicationController

  def index
    @goal = Goal.all
    @income = Income.all
    @expenditure = Expenditure.all
  end

end