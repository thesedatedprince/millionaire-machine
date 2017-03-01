class DashboardsController < ApplicationController


  def index
    @income = Income.all
  end

end
