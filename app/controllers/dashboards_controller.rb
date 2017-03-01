
class DashboardsController < ApplicationController

  def index
    @goal = Goal.all
  end

end
